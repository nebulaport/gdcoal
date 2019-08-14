package com.isoftstone.gdcoal.controller;


import com.isoftstone.gdcoal.entity.PtBondcontractdetailEntity;
import com.isoftstone.gdcoal.entity.PtBondcontracttabEntity;
import com.isoftstone.gdcoal.entity.TFultbsupplierEntity;
import com.isoftstone.gdcoal.service.BondCtractService;
import com.isoftstone.gdcoal.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;


import java.io.*;
import java.util.Date;
import java.util.List;
import java.util.Properties;
import java.util.UUID;

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
       List<TFultbsupplierEntity> list=bondCtractService.selectFultbsuppliers();
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

            for (CommonsMultipartFile file1 : files) {
                try {
                    if (!file1.isEmpty()) {
                        InputStream uploadFileInputStream = file1.getInputStream();
                        String fileName = file1.getOriginalFilename();//上传的文件名
                        String newFileName = (new Date()).getTime() + fileName.substring(fileName.lastIndexOf("."));
                        entity.setContractfilename(newFileName);
                        File file = new File(filePath + "/" + newFileName);
                        OutputStream output = new FileOutputStream(file);
                        byte[] b = new byte[1024 * 100];
                        int j = 0;
                        while ((j = uploadFileInputStream.read(b)) != -1) {
                            output.write(b, 0, j);
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
}
