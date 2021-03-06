package com.isoftstone.gdcoal.controller;

import com.isoftstone.gdcoal.entity.PtUserEntity;
import com.isoftstone.gdcoal.entity.TFultbpurchasingapplyEntity;
import com.isoftstone.gdcoal.entity.TFultbpurchasingapplydetailEntity;
import com.isoftstone.gdcoal.entity.TFultbsupplierEntity;
import com.isoftstone.gdcoal.service.TFultbpurchasingapplyService;
import com.isoftstone.gdcoal.service.TFultbpurchasingapplydetailService;
import com.isoftstone.gdcoal.utils.DateUtils;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * @ClassName TFultbpurchasingapplydetailController
 * @Description
 * @Author NebulaPort
 * @Date 2019/8/14 14:59
 */
@Controller
@RequestMapping("/execute")
public class TFultbpurchasingapplydetailController {
    @Autowired
    private TFultbpurchasingapplydetailService tFultbpurchasingapplydetailService;
    @Autowired
    private TFultbpurchasingapplyService tFultbpurchasingapplyService;



    /**
     * 分页查询
     */
    @RequestMapping("/selectApplydetailPage")
    public String selectPurchapplyPage(String purchapplyid, Integer pageNow, HttpServletRequest request, Model model) {
        if (!(pageNow != null && !"".equals(pageNow.toString()))) {
            pageNow = 1;
        }
        StringBuffer whereSql = new StringBuffer("");
        TFultbpurchasingapplyEntity entity = new TFultbpurchasingapplyEntity();
        entity.setPageNow(pageNow);
        if (purchapplyid != null && !"".equals(purchapplyid.trim())) {
            whereSql.append(" and t_fultbpurchasingapply.purchapplyid like '%").append(purchapplyid).append("%' ");
        }
        whereSql.append("and applystate ='已下达'");

        entity.setWhereSql(whereSql);
        entity.setTotal(tFultbpurchasingapplyService.selectTotal(entity));
        List<TFultbpurchasingapplyEntity> list = tFultbpurchasingapplyService.selectPurchapplyPage(entity);

        model.addAttribute("purchapply", list);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("entity", entity);
        map.put("purchapplyid", purchapplyid);
        model.addAllAttributes(map);

        return "/views/execute/applydetail.jsp";

    }

    @RequestMapping("/selectById")
    public String selectById(String purchapplyid, Model model) {

        TFultbpurchasingapplyEntity purchapply=tFultbpurchasingapplyService.selectById(purchapplyid);
        StringBuilder applydetailid=new StringBuilder();
        applydetailid.append(UUID.randomUUID().toString());


        //获取供应商列表
        List<TFultbsupplierEntity>  supplier=tFultbpurchasingapplydetailService.selectFultbsuppliers();
        model.addAttribute("supplier",supplier);
        model.addAttribute("purchapply", purchapply);
        model.addAttribute("applydetailid", applydetailid);

        return "/views/execute/addApplydetail.jsp";
    }

    /**
     * 添加记录
     * */
    @RequestMapping("/addApplydetailInfo")
    public String addApplydetailInfo( String purchapplyid, String applydetailid, BigDecimal qty,
                                      String linktel,
                                     String supplierid, String remark, String zbqty,String zbprice){

        TFultbpurchasingapplydetailEntity applydetail=new TFultbpurchasingapplydetailEntity();
        //供应商实体
        TFultbsupplierEntity tFultbsupplierEntity=tFultbpurchasingapplydetailService.selectOrganizationcode(supplierid);
        if (tFultbsupplierEntity!=null){
            applydetail.setOrganizationcode(tFultbsupplierEntity.getOrganizationcode());
        }

        applydetail.setApplydetailid(applydetailid);
        applydetail.setPurchapplyid(purchapplyid);

        applydetail.setSupplierid(supplierid);


        applydetail.setLinktel(linktel);
        applydetail.setRemark(remark);
        applydetail.setZbqty(zbqty);
        applydetail.setZbprice(zbprice);
        applydetail.setQty(qty);
        applydetail.setCreatedate(DateUtils.getCurrentDate());
        //获取当前登录用户
        PtUserEntity user=(PtUserEntity) SecurityUtils.getSubject().getPrincipal();
        applydetail.setCreateuser(user.getNiceName());
        applydetail.setCreateuserid(user.getUserUuid());



        int i= tFultbpurchasingapplydetailService.saveApplydetail(applydetail);
        if (i > 0 ) {
            return "redirect:/execute/selectApplydetailPage?pageNow=1";
        }
        return "redirect:/error.jsp";


    }
    /**
     * 判重
     * */
    @RequestMapping("/saveApplydetailValidate")
    @ResponseBody
    public Boolean saveRoleValidate(String supplierid){
        TFultbpurchasingapplydetailEntity entity=new TFultbpurchasingapplydetailEntity();
        entity.setWhereSql(new StringBuffer(" and supplierid ='"+supplierid+"' "));
        List<TFultbpurchasingapplydetailEntity> list=tFultbpurchasingapplydetailService.selectApplydetail(new StringBuffer(" and supplierid ='"+supplierid+"' "));
        return list == null || list.size() <= 0;
    }



}
