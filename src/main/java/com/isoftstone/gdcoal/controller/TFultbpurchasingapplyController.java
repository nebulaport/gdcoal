package com.isoftstone.gdcoal.controller;

import com.isoftstone.gdcoal.entity.TFultbpurchasingapplyEntity;
import com.isoftstone.gdcoal.service.TFultbpurchasingapplyService;
import com.isoftstone.gdcoal.utils.DateUtils;
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
 * @Description TODO：采购申请审批相关业务逻辑实现
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
     * */
    @RequestMapping("/logPurchapplyPage")
    public String loadPurchapplyPage(){
        return "/views/check/Purchapply.jsp";
    }

    @RequestMapping("/selectPurchapplyPage")
    public String  selectPurchapplyPage(String purchapplyid, Integer pageNow, HttpServletRequest request, Model model){
        if(!(pageNow!=null&&!pageNow.toString().equals(""))){
            pageNow=1;
        }
        StringBuffer whereSql=new StringBuffer("");
        TFultbpurchasingapplyEntity entity=new TFultbpurchasingapplyEntity();
        entity.setPageNow(pageNow);
        if(purchapplyid!=null&&!purchapplyid.trim().equals("")){
            whereSql.append(" and t_fultbpurchasingapply.PURCHAPPLYID like '%"+purchapplyid+"%' ");
        }
        entity.setWhereSql(whereSql);
        entity.setTotal(tFultbpurchasingapplyService.selectTotal(entity));
        List<TFultbpurchasingapplyEntity> list=tFultbpurchasingapplyService.selectPurchapplyPage(entity);

        model.addAttribute("tFultbpurchasingapply",list);
        Map<String,Object> map=new HashMap<String,Object>();
        map.put("entity",entity);
        map.put("purchapplyid",purchapplyid);
        model.addAllAttributes(map);

        return "/views/check/Purchapply.jsp";

    }

    @RequestMapping("/selectById")
    public String selectById(String purchapplyid,Model model){
        TFultbpurchasingapplyEntity entity=tFultbpurchasingapplyService.selectById(purchapplyid);
        model.addAttribute("tFultbpurchasingapply",entity);

        return "/views/check/checkApply.jsp";
    }

    @RequestMapping("/checkApply")
    public String updatePurchapply(String purchapplyid,String applyState){
        TFultbpurchasingapplyEntity entity=new TFultbpurchasingapplyEntity();

        int i=  tFultbpurchasingapplyService.updatePurchapply(entity);
        if(i>0){
            return "redirect:/check/selectPurchapplyPage?pageNow=1";
        }
        return "/error.jsp";
    }
    @RequestMapping("/applyPass")
    public String applyPass(String purchapplyid,String applyState){
        TFultbpurchasingapplyEntity entity=new TFultbpurchasingapplyEntity();
        entity.setPurchapplyid(purchapplyid);
        entity.setApplystate("通过");
        entity.setOperuser("张三");//暂时写死
        entity.setOperdate(DateUtils.getCurrentTime());

        int i=  tFultbpurchasingapplyService.updatePurchapply(entity);
        if(i>0){
            return "redirect:/check/selectPurchapplyPage?pageNow=1";
        }
        return "/error.jsp";
    }
    @RequestMapping("/applyFail")
    public String applyFail(String purchapplyid,String applyState){
        TFultbpurchasingapplyEntity entity=new TFultbpurchasingapplyEntity();
        entity.setPurchapplyid(purchapplyid);
        entity.setApplystate("未通过");
        entity.setOperuser("张三");//暂时写死
        entity.setOperdate(DateUtils.getCurrentTime());

        int i=  tFultbpurchasingapplyService.updatePurchapply(entity);
        if(i>0){
            return "redirect:/check/selectPurchapplyPage?pageNow=1";
        }
        return "/error.jsp";
    }




}
