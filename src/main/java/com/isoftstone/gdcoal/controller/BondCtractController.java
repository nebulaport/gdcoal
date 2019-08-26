package com.isoftstone.gdcoal.controller;


import com.isoftstone.gdcoal.entity.PtBondcontractdetailEntity;
import com.isoftstone.gdcoal.entity.PtBondcontractsupplementEntity;
import com.isoftstone.gdcoal.entity.PtBondcontracttabEntity;
import com.isoftstone.gdcoal.entity.TFultbsupplierEntity;
import com.isoftstone.gdcoal.service.BondCtractService;
import com.isoftstone.gdcoal.utils.DateUtils;
import com.isoftstone.gdcoal.utils.FileDownload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.*;

/**
 * Created by issuser on 2019/8/12.
 */
@Controller
public class BondCtractController {
    @Autowired
    private BondCtractService bondCtractService;
    @RequestMapping("/bondCtractManager/loadAddBondCtractPage")
    public String loadAddBondCtractPage(Model model){
        //查询供应商列表
        List<TFultbsupplierEntity>  list=bondCtractService.selectFultbsuppliers();
        model.addAttribute("rows",list);
        //生成合同编号
        Date day=new Date();
        long code=day.getTime();
        String comp="CMP";//甲方简称
        model.addAttribute("code",comp+"-"+code);

        return "/views/bondctract/addBondctract.jsp";
    }

    //保存长协交易
    @RequestMapping("/bondCtractManager/addbondCtractInfo")
    public String addbondCtractInfo( @RequestParam(name="bondctractFile") CommonsMultipartFile[] files, String desc, String deliverendDate, String deliverstartDate, String checktype,
                                     String transporttype, String supplierid,
                                     String signDate, String contractNo, String status,
                                     String[] coaltype1, String []coaltype2, Double[] purchasenum,
                                     Double[] calorificnum){

        String ptUserno="101";//暂时写死
        String createuser="101";//暂时写死
        String createdate= DateUtils.getCurrentDate();
        PtBondcontracttabEntity entity=new PtBondcontracttabEntity();
        entity.setContractNo(contractNo);
        entity.setSignDate(signDate!=null?signDate.replace("-",""):null);
        entity.setPtUserno(ptUserno);
        entity.setSupplierid(supplierid);
        entity.setTransporttype(transporttype);
        entity.setChecktype(checktype);
        entity.setDeliverstartDate(deliverstartDate!=null?deliverstartDate.replace("-",""):null);
        entity.setDeliverendDate(deliverendDate!=null?deliverendDate.replace("-",""):null);
        entity.setCreateuser(createuser);
        entity.setCreatedate(createdate);
        entity.setRemark(desc);
        entity.setStatus(status);
        //保存前获取文件存储路径以及文件名

        if(files!=null&&files.length>0){
            String filePath="";
            InputStream inputStream=BondCtractController.class.getClassLoader().getResourceAsStream("setting.properties");
            Properties pro=new Properties();
            try {
                pro.load(inputStream);
                filePath=pro.getProperty("BONDSTRACT_PATH");
                File fileStore=new File(filePath);
                if(!fileStore.exists()){
                    fileStore.mkdirs();
                }
                entity.setContracturl(filePath);
            } catch (Exception e) {
                e.printStackTrace();
            }

            for(int i=0;i<files.length;i++){
                try {
                    if(!files[i].isEmpty()){
                        InputStream uploadFileInputStream=files[i].getInputStream();
                        String fileName= files[i].getOriginalFilename();//上传的文件名
                        String newFileName=(new java.util.Date()).getTime()+fileName.substring(fileName.lastIndexOf("."));
                        entity.setContractfilename(newFileName);
                        File file=new File(filePath+"/"+newFileName);
                        OutputStream output=new FileOutputStream(file);
                        byte[] b=new byte[1024*100];
                        int j=0;
                        while((j=uploadFileInputStream.read(b))!=-1){
                            output.write(b,0,j);
                        }
                        output.close();
                        uploadFileInputStream.close();
                    }

                    inputStream.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }

            }
        }

        bondCtractService.saveBondCtract(entity);
        if(coaltype1!=null&&coaltype2!=null&&purchasenum!=null&&calorificnum!=null){
            for(int i=0;i<coaltype1.length;i++){
                PtBondcontractdetailEntity detailEntity=new PtBondcontractdetailEntity();
                detailEntity.setDetailid(UUID.randomUUID().toString());
                detailEntity.setCoaltype(coaltype1[i]+":"+coaltype2[i]);
                detailEntity.setPurchasenum(purchasenum[i]);
                detailEntity.setCalorificnum(calorificnum[i]);
                detailEntity.setCreatedate(DateUtils.getCurrentDate().replace("-",""));
                detailEntity.setCreateuser("101");
                detailEntity.setContractNo(entity.getContractNo());
                bondCtractService.saveBondCtractDeatail(detailEntity);
            }
        }

        return "redirect:/bondCtractManager/selectBondCtractInfo?contractNo="+entity.getContractNo();
    }

    //查询保存或者提交后的长协信息
    @RequestMapping("/bondCtractManager/selectBondCtractInfo")
    public String selectBondCtractInfo(String contractNo,Model model ){
        PtBondcontracttabEntity entity=bondCtractService.selectBondcontracttabList(contractNo);
        List<PtBondcontractdetailEntity> list=bondCtractService.selectPtBondcontractdetailList(contractNo);
        //查询供应商列表
        List<TFultbsupplierEntity>  rows=bondCtractService.selectFultbsuppliers();
        model.addAttribute("rows",rows);

        model.addAttribute("entity",entity);
        model.addAttribute("list",list);

        return "/views/bondctract/bondctractInfo.jsp";
    }
    //保存后查看当前长协数据，点击提交修改状态为status=2
    @RequestMapping("/bondCtractManager/bondCtractSubmit")
    public String bondCtractSubmit(String contractNo){
        PtBondcontracttabEntity entity=new PtBondcontracttabEntity();
        entity.setContractNo(contractNo);
        entity.setStatus("2");
        bondCtractService.updateContractStatus(entity);
        return "redirect:/bondCtractManager/selectBondCtractInfo?contractNo="+contractNo;
    }

    //长协交易信息查询
    @RequestMapping("/bondCtractManager/selectBondCtractMessage")
    public String selectBondCtractMessage(Model model,Integer pageNow,String fultbSupplierName) {
        if (!(pageNow != null && !pageNow.toString().equals(""))) {
            pageNow = 1;
        }
        StringBuffer whereSql = new StringBuffer("");
        PtBondcontracttabEntity entity = new PtBondcontracttabEntity();
        entity.setPageNow(pageNow);
        if (fultbSupplierName != null && !fultbSupplierName.trim().equals("")) {
            whereSql.append("  and c.NAME like '%" + fultbSupplierName + "%' ");
        }
        entity.setWhereSql(whereSql);
        entity.setTotal(bondCtractService.selectBondcontractInfoTotal(entity));
        List<Map<String, Object>> list = bondCtractService.selectBondcontractInfo(entity);

        model.addAttribute("rows", list);
        model.addAttribute("entity", entity);
        model.addAttribute("fultbSupplierName", fultbSupplierName);
        return "/views/bondctract/bondctractSupportInfo.jsp";
    }

    //加载长协交易补充协议查询界面
    @RequestMapping("/bondCtractManager/selectBondCtractSupportInfo")
    public String selectBondCtractSupportInfo(String contractNo,Model model ){
        PtBondcontracttabEntity entity=bondCtractService.selectBondcontracttabList(contractNo);
        List<PtBondcontractdetailEntity> list=bondCtractService.selectPtBondcontractdetailList(contractNo);
        //查询供应商列表
        List<TFultbsupplierEntity>  rows=bondCtractService.selectFultbsuppliers();
        model.addAttribute("rows",rows);

        model.addAttribute("entity",entity);
        model.addAttribute("list",list);
        //查看补充协议列表
        List<PtBondcontractsupplementEntity> supportList=bondCtractService.selectBondcontractSupportList(contractNo);
        model.addAttribute("supportList",supportList);
        if(entity.getStatus()!=null&&entity.getStatus().toString().equals("1")){
            return "/views/bondctract/addBondctractSupportInfo.jsp";
        }else{
            return "/views/bondctract/bondctractSupportInfoDetail.jsp";
        }

    }

    //加载长协交易添加补充协议查询界面
    @RequestMapping("/bondCtractManager/addBondCtractSupportInfo")
    public String addBondCtractSupportInfo(String contractNo,Model model ){
        PtBondcontracttabEntity entity=bondCtractService.selectBondcontracttabList(contractNo);
        List<PtBondcontractdetailEntity> list=bondCtractService.selectPtBondcontractdetailList(contractNo);
        //查询供应商列表
        List<TFultbsupplierEntity>  rows=bondCtractService.selectFultbsuppliers();
        model.addAttribute("rows",rows);

        model.addAttribute("entity",entity);
        model.addAttribute("list",list);
        //查询补充协议信息
        List<PtBondcontractsupplementEntity> supportList=bondCtractService.selectBondcontractSupportList(contractNo);
        model.addAttribute("supportList",supportList);

        return "/views/bondctract/addBondctractSupportInfo.jsp";
    }

    //补充协议上传（添加）
    @RequestMapping("/bondCtractManager/addBondctractSupportRow")
    public String addBondctractSupportRow(@RequestParam(name="supportFile") CommonsMultipartFile[] supportFile,String contractNo,String supplementid,String supplementdesc,String uploaddate){
        PtBondcontractsupplementEntity entity=new PtBondcontractsupplementEntity();
        entity.setContractNo(contractNo);
        entity.setSupplementdesc(supplementdesc);
        entity.setSupplementid(supplementid);
        entity.setUploaddate(uploaddate!=null?uploaddate.replace("-",""):null);
        entity.setUploaduser("101");
        if(supportFile!=null&&supportFile.length>0){
            String filePath="";
            InputStream inputStream=BondCtractController.class.getClassLoader().getResourceAsStream("setting.properties");
            Properties pro=new Properties();
            try {
                pro.load(inputStream);
                filePath=pro.getProperty("BONDSTRACT_SUPPORT_PATH");
                File fileStore=new File(filePath);
                if(!fileStore.exists()){
                    fileStore.mkdirs();
                }
                entity.setSupplementfileurl(filePath);
            } catch (Exception e) {
                e.printStackTrace();
            }

            for(int i=0;i<supportFile.length;i++){
                try {
                    if(!supportFile[i].isEmpty()){
                        InputStream uploadFileInputStream=supportFile[i].getInputStream();
                        String fileName= supportFile[i].getOriginalFilename();//上传的文件名
                        String newFileName=(new java.util.Date()).getTime()+fileName.substring(fileName.lastIndexOf("."));
                        entity.setSupplementfilename(newFileName);
                        File file=new File(filePath+"/"+newFileName);
                        OutputStream output=new FileOutputStream(file);
                        byte[] b=new byte[1024*100];
                        int j=0;
                        while((j=uploadFileInputStream.read(b))!=-1){
                            output.write(b,0,j);
                        }
                        output.close();
                        uploadFileInputStream.close();
                    }

                    inputStream.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }

            }
            int i= bondCtractService.saveBondContractSupportInfo(entity);
            if(i>0){
                return "redirect:/bondCtractManager/addBondCtractSupportInfo?contractNo="+contractNo;
            }

        }

        return "/error.jsp";
    }
    //长协交易补充协议提交
    @RequestMapping("/bondCtractManager/bondCtractSupportSubmit")
    public String bondCtractSupportSubmit(String contractNo){
        PtBondcontracttabEntity entity=new PtBondcontracttabEntity();
        entity.setContractNo(contractNo);
        entity.setStatus("2");
        bondCtractService.updateContractStatus(entity);

        return "redirect:/bondCtractManager/selectBondCtractSupportInfo?contractNo="+contractNo;
    }
    //删除补充协议
    @RequestMapping("/bondCtractManager/deleteCtractSupport")
    public String deleteCtractSupport(String supplementid,String contractNo){
        int i=bondCtractService.deleteContractSupplement(supplementid);
        if(i>0){
            return "redirect:/bondCtractManager/addBondCtractSupportInfo?contractNo="+contractNo;
        }else{
            return "/error.jsp";
        }
    }

    //下载长协合同附件
    @RequestMapping("/bondCtractManager/downLoadBondContractFile")
    public  void downLoadBondContractFile(HttpServletRequest request, HttpServletResponse response, String contractNo){
        PtBondcontracttabEntity entity=bondCtractService.selectBondcontracttabList(contractNo);
        String path=entity.getContracturl()+"/"+entity.getContractfilename();
        FileDownload.dowLoad(request,response,path);
    }
    //下载长协合同补充信息的附件
    @RequestMapping("/bondCtractManager/downLoadBondContractSupportFile")
    public  void downLoadBondContractSupportFile(HttpServletRequest request, HttpServletResponse response,String supplementid){
        PtBondcontractsupplementEntity entity=bondCtractService.selectPtBondcontractsupplement(supplementid);
        String path=entity.getSupplementfileurl()+"/"+entity.getSupplementfilename();
        FileDownload.dowLoad(request,response,path);
    }
}
