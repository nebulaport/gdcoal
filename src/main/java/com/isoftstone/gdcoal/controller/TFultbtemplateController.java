package com.isoftstone.gdcoal.controller;

import com.isoftstone.gdcoal.entity.TFultbtemplateEntity;
import com.isoftstone.gdcoal.service.TFultbtemplateService;
import com.isoftstone.gdcoal.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * Created by tupingping on 2019/8/13.
 */
@Controller
public class TFultbtemplateController {
    @Autowired
    private TFultbtemplateService tFultbtemplateService;

    @RequestMapping("/tFultbtemplateManager/loadCreateTFultbtemplate")
    public String loadCreateTFultbtemplate() {

        return "/views/tfultbtemplate/addTFultbtemplate.jsp";
    }

    //保存采购申请信息
    @RequestMapping("/saveTFultbtemplate")
    public String saveTFultbtemplate(String templateid,String jhtimeEnd, String createuserdeptid, String billnumber,
                                        String createuser, String signname, String createdate, String jhtime,
                                        String jhtime2, String coalclass,String coaltype, BigDecimal qty,
                                        String yunshuMode, String jiaohuoMode, String jiesuanMode,String yanshouMode,
                                        String maxlimitprice,String minlimitprice,String maxremark,String paymode,
                                        String isquotebond,String isperformbond,String type1,String type4,String type2,
                                        String type6, String type3, String type32,String kgj1,String kgj2,String kgj3,
                                        String kgj4,String type11,String type14, String type323,String type333,
                                        String type8, String type5,String type7,String remark,String status){
        TFultbtemplateEntity entity = new TFultbtemplateEntity();
        entity.setTemplateid(UUID.randomUUID().toString());
        entity.setJhtimeEnd(jhtimeEnd);
        entity.setCreateuserdeptid(createuserdeptid);
        entity.setBillnumber(createuserdeptid + DateUtils.getCurrentTime());
        entity.setCreateuser(createuser);
        entity.setSignname(signname);
        entity.setCreatedate(DateUtils.getCurrentDate());
        entity.setJhtime(jhtime);
        entity.setJhtime2(jhtime2);
        entity.setCoalclass(coalclass);
        entity.setCoaltype(coaltype);
        entity.setQty(qty);
        entity.setYunshuMode(yunshuMode);
        entity.setJiaohuoMode(jiaohuoMode);
        entity.setJiesuanMode(jiesuanMode);
        entity.setYanshouMode(yanshouMode);
        entity.setMaxlimitprice(maxlimitprice);
        entity.setMinlimitprice(minlimitprice);
        entity.setMaxremark(maxremark);
        entity.setPaymode(paymode);
        entity.setIsquotebond(isquotebond);
        entity.setIsperformbond(isperformbond);
        entity.setType1(type1);
        entity.setType4(type4);
        entity.setType2(type2);
        entity.setType6(type6);
        entity.setType3(type3);
        entity.setType32(type32);
        entity.setKgj1(kgj1);
        entity.setKgj2(kgj2);
        entity.setKgj3(kgj3);
        entity.setKgj4(kgj4);
        entity.setType11(type11);
        entity.setType14(type14);
        entity.setType323(type323);
        entity.setType333(type333);
        entity.setType8(type8);
        entity.setType5(type5);
        entity.setType7(type7);
        entity.setRemark(remark);
        entity.setStatus(status);

        int i = tFultbtemplateService.saveTFultbtemplate(entity);
        if(i > 0){
            return "redirect:/selectTFultbtemplateInfo?billnumber=" + entity.getBillnumber();
        }
        return "/error.jsp";
    }

     //查询保存或提交的采购申请
     @RequestMapping("/selectTFultbtemplateInfo")
     public String selectTFultbtemplateInfo(String billnumber,Model model){
         TFultbtemplateEntity entity = tFultbtemplateService.selectByIdTFultbtemplate(billnumber);
         model.addAttribute("entity",entity);
         return "/views/tfultbtemplate/TFultbtemplateInfo.jsp";
     }

    // /删除采购申请
    @RequestMapping("/deleteTFultbtemplate")
    public String deleteTFultbtemplate(String billnumber){
       int i = tFultbtemplateService.deleteTFultbtemplate(billnumber);
        if(i > 0){
            return "redirect:/tFultbtemplateManager/selectPageTFultbtemplate?pageNow=1" ;
        }
        return "/error.jsp";
    }

    //修改采购申请信息
    @RequestMapping("/updateTFultbtemplate")
    public String updateTFultbtemplate(String templateid,String jhtimeEnd, String createuserdeptid, String billnumber,
                                       String createuser, String signname, String createdate, String jhtime,
                                       String jhtime2, String coalclass,String coaltype, BigDecimal qty,
                                       String yunshuMode, String jiaohuoMode, String jiesuanMode,String yanshouMode,
                                       String maxlimitprice,String minlimitprice,String maxremark,String paymode,
                                       String isquotebond,String isperformbond,String type1,String type4,String type2,
                                       String type6, String type3, String type32,String kgj1,String kgj2,String kgj3,
                                       String kgj4,String type11,String type14, String type323,String type333,
                                       String type8, String type5,String type7,String remark,String status){
        TFultbtemplateEntity entity = new TFultbtemplateEntity();
        entity.setTemplateid(templateid);
        entity.setJhtimeEnd(jhtimeEnd);
        entity.setCreateuserdeptid(createuserdeptid);
        entity.setBillnumber(billnumber);
        entity.setCreateuser(createuser);
        entity.setSignname(signname);
        entity.setCreatedate(createdate);
        entity.setJhtime(jhtime);
        entity.setJhtime2(jhtime2);
        entity.setCoalclass(coalclass);
        entity.setCoaltype(coaltype);
        entity.setQty(qty);
        entity.setYunshuMode(yunshuMode);
        entity.setJiaohuoMode(jiaohuoMode);
        entity.setJiesuanMode(jiesuanMode);
        entity.setYanshouMode(yanshouMode);
        entity.setMaxlimitprice(maxlimitprice);
        entity.setMinlimitprice(minlimitprice);
        entity.setMaxremark(maxremark);
        entity.setPaymode(paymode);
        entity.setIsquotebond(isquotebond);
        entity.setIsperformbond(isperformbond);
        entity.setType1(type1);
        entity.setType4(type4);
        entity.setType2(type2);
        entity.setType6(type6);
        entity.setType3(type3);
        entity.setType32(type32);
        entity.setKgj1(kgj1);
        entity.setKgj2(kgj2);
        entity.setKgj3(kgj3);
        entity.setKgj4(kgj4);
        entity.setType11(type11);
        entity.setType14(type14);
        entity.setType323(type323);
        entity.setType333(type333);
        entity.setType8(type8);
        entity.setType5(type5);
        entity.setType7(type7);
        entity.setRemark(remark);
        entity.setStatus(status);

        tFultbtemplateService.updateTFultbtemplate(entity);
        return "redirect:/selectTFultbtemplateInfo?billnumber=" + entity.getBillnumber();
    }

    //按模板单号查询采购申请单信息
    @RequestMapping("/selectByIdTFultbtemplate")
    public String selectByIdTFultbtemplate(String billnumber,Model model){
        TFultbtemplateEntity entity = tFultbtemplateService.selectByIdTFultbtemplate(billnumber);
        model.addAttribute("entity",entity);
        return "/views/tfultbtemplate/operateTFultbtemplate.jsp";
    }

    //分页查询
    @RequestMapping("/tFultbtemplateManager/selectPageTFultbtemplate")
    public String selectPageTFultbtemplate(String status,String billnumber,Integer pageNow,Model model){
        if(!(pageNow!=null&&!pageNow.toString().equals(""))){
            pageNow=1;
        }
        StringBuffer whereSql = new StringBuffer("");
        TFultbtemplateEntity entity = new TFultbtemplateEntity();
        entity.setPageNow(pageNow);
        entity.setBillnumber(billnumber);
        entity.setStatus(status);
        if(billnumber != null && !billnumber.trim().equals("")){
            whereSql.append(" and BILLNUMBER = '" + billnumber + "'");
        }
        if(status != null && !status.trim().equals("")){
            whereSql.append(" and STATUS = '" + status + "'");
        }
        entity.setWhereSql(whereSql);
        entity.setTotal(tFultbtemplateService.selectTotalTFultbtemplate(entity));
        List<TFultbtemplateEntity> list = tFultbtemplateService.selectPageTFultbtemplate(entity);
        model.addAttribute("rows",list);
        Map<String,Object> map=new HashMap<String,Object>();
        map.put("entity",entity);
        map.put("billnumber",billnumber);
        map.put("status",status);
        model.addAllAttributes(map);
        return "/views/tfultbtemplate/TFultbtemplate.jsp";
    }
}
