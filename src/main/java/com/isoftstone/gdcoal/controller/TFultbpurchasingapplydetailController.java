package com.isoftstone.gdcoal.controller;

import com.isoftstone.gdcoal.entity.TFultbpurchasingapplyEntity;
import com.isoftstone.gdcoal.entity.TFultbpurchasingapplydetailEntity;
import com.isoftstone.gdcoal.entity.TFultbsupplierEntity;
import com.isoftstone.gdcoal.service.TFultbpurchasingapplyService;
import com.isoftstone.gdcoal.service.TFultbpurchasingapplydetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @ClassName TFultbpurchasingapplydetailController
 * @Description TODO
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
            whereSql.append(" and t_fultbpurchasingapply.purchapplyid like '%" + purchapplyid + "%' ");
        }
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
        applydetailid.append("DETAIL-").append(purchapplyid);


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
    public String addApplydetailInfo(String purchapplyid, String applydetailid, BigDecimal qty, String yunshuMode,
                                     String yanshoMode, String linktel,
                                     String supplierid, String remark){
        TFultbpurchasingapplyEntity purchapply=new TFultbpurchasingapplyEntity();
        TFultbpurchasingapplydetailEntity applydetail=new TFultbpurchasingapplydetailEntity();

        purchapply.setPurchapplyid(purchapplyid);
        purchapply.setQty(qty);
        purchapply.setYunshuMode(yunshuMode);
        purchapply.setYanshouMode(yanshoMode);

        applydetail.setApplydetailid(applydetailid);
        applydetail.setSupplierid(supplierid);
        applydetail.setLinktel(linktel);
        applydetail.setRemark(remark);

        int i = tFultbpurchasingapplyService.updatePurchapply(purchapply);
        int j= tFultbpurchasingapplydetailService.saveApplydetail(applydetail);
        if (i > 0 && j > 0) {
            return "redirect:/success.jsp";
        }
        return "redirect:/error.jsp";


    }



}
