package com.isoftstone.gdcoal.controller;

import com.isoftstone.gdcoal.entity.PtUserEntity;
import com.isoftstone.gdcoal.entity.TFultbpurchasingapplyEntity;
import com.isoftstone.gdcoal.service.TFultbpurchasingapplyService;
import com.isoftstone.gdcoal.utils.DateUtils;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @ClassName TFultbpurchasingapplyController
 * @Description
 * @Author NebulaPort
 * @Date 2019/8/13 10:10
 */
@Controller
@RequestMapping("/check")
public class TFultbpurchasingapplyController {
    @Autowired
    private TFultbpurchasingapplyService tFultbpurchasingapplyService;

    /**
     * 加载Purchapply.jsp页面
     */
    @RequestMapping("/loadPurchapplyPage")
    public String loadPurchapplyPage() {
        return "/views/check/purchapply.jsp";
    }


    /**
     * 分页查询
     */
    @RequestMapping("/selectPurchapplyPage")
    public String selectPurchapplyPage(String purchapplyid, Integer pageNow, HttpServletRequest request, Model model) {
        if (!(pageNow != null && !"".equals(pageNow.toString()))) {
            pageNow = 1;
        }
        StringBuffer whereSql = new StringBuffer("");
        TFultbpurchasingapplyEntity entity = new TFultbpurchasingapplyEntity();
        entity.setPageNow(pageNow);
        if (purchapplyid != null && !"".equals(purchapplyid.trim())) {
            whereSql.append(" and t_fultbpurchasingapply.PURCHAPPLYID like '%").append(purchapplyid).append("%' ");
        }
        whereSql.append(" and( t_fultbpurchasingapply.applystate not in('已下达','已驳回') or t_fultbpurchasingapply.applystate is null )");

        entity.setWhereSql(whereSql);
        entity.setTotal(tFultbpurchasingapplyService.selectTotal(entity));
        List<TFultbpurchasingapplyEntity> list = tFultbpurchasingapplyService.selectPurchapplyPage(entity);

        model.addAttribute("tFultbpurchasingapply", list);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("entity", entity);
        map.put("purchapplyid", purchapplyid);
        model.addAllAttributes(map);

        return "/views/check/purchapply.jsp";

    }

    @RequestMapping("/selectById")
    public String selectById(String purchapplyid, Model model) {
        TFultbpurchasingapplyEntity entity = tFultbpurchasingapplyService.selectById(purchapplyid);
        model.addAttribute("tFultbpurchasingapply", entity);

        return "/views/check/checkApply.jsp";
    }

    /**
     * 审核通过/不通过
     */
    @RequestMapping("/checkApply")
    public String applyPass(String purchapplyid, Integer check,HttpServletRequest request) {
        TFultbpurchasingapplyEntity entity = new TFultbpurchasingapplyEntity();
        entity.setPurchapplyid(purchapplyid);
        if (check==1){
            entity.setApplystate("已下达");
        }else if (check==0){
            entity.setApplystate("已驳回");
        }
        //获取当前登录用户
        PtUserEntity user=(PtUserEntity) SecurityUtils.getSubject().getPrincipal();
        entity.setOperuser(user.getUserUuid());
        entity.setOperdate(DateUtils.getCurrentTime());

        int i = tFultbpurchasingapplyService.updatePurchapply(entity);
        if (i > 0) {
            return "redirect:/check/selectPurchapplyPage?pageNow=1";
        }
        return "/error.jsp";
    }


    /**
     * 待办中心管理
     */
    @RequestMapping("/toDo")
    public String toDo(String state,Integer pageNow, Model model,HttpServletRequest request) {

        if (!(pageNow != null && !"".equals(pageNow.toString()))) {
            pageNow = 1;
        }
         StringBuffer whereSql = new StringBuffer("");

       if ("toCheck".equals(state)) {
           whereSql.append(" and( t_fultbpurchasingapply.applystate not in('已下达','已驳回') or t_fultbpurchasingapply.applystate is null )");
       }else if("toFill".equals(state)){
           whereSql.append(" and t_fultbpurchasingapply.applystate ='已下达'");

       }else if ("rejected".equals(state)){
           whereSql.append(" and t_fultbpurchasingapply.applystate ='已驳回'");
       }else{
           whereSql.append(" and t_fultbpurchasingapply.applystate !='已驳回'");
       }


        TFultbpurchasingapplyEntity purchapply = new TFultbpurchasingapplyEntity();
        purchapply.setPageNow(pageNow);
        purchapply.setWhereSql(whereSql);

        purchapply.setTotal(tFultbpurchasingapplyService.selectTotal(purchapply));
        List<TFultbpurchasingapplyEntity> purchapplyList = tFultbpurchasingapplyService.selectPurchapplyPage(purchapply);

        model.addAttribute("purchapplyList", purchapplyList);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("purchapply", purchapply);
        map.put("state", state);
        model.addAllAttributes(map);


        return "/views/check/toDo.jsp";

    }




}
