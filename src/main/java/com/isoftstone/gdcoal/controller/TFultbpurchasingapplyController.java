package com.isoftstone.gdcoal.controller;

import com.isoftstone.gdcoal.entity.TFultbpurchasingapplyEntity;
import com.isoftstone.gdcoal.service.TFultbpurchasingapplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
public class TFultbpurchasingapplyController {
    @Autowired
    private TFultbpurchasingapplyService tFultbpurchasingapplyService;
    /**
     * 加载Purchapply.jsp页面
     * */
    @RequestMapping("/check/logPurchapplyPage")
    public String loadPurchapplyPage(){
        return "/views/check/Purchapply.jsp";
    }

    @RequestMapping("/check/selectPurchapplyPage")
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
        //请对象HttpServletRequest   HttpServletResponse
        // request.setAttribute("rows",list);//将数据放入请求对象，该数据在本次请求中一直存在
        //request.setAttribute("entity",entity);
        // request.setAttribute("organName",organName);
        model.addAttribute("tFultbpurchasingapply",list);
        Map<String,Object> map=new HashMap<String,Object>();
        map.put("entity",entity);
        map.put("purchapplyid",purchapplyid);
        model.addAllAttributes(map);

        return "/views/check/Purchapply.jsp";

    }

    @RequestMapping("/check/selectById")
    public String selectById(String purchapplyid,Model model){
        TFultbpurchasingapplyEntity entity=tFultbpurchasingapplyService.selectById(purchapplyid);
        model.addAttribute("tFultbpurchasingapply",entity);

        return "/views/check/checkApply.jsp";
    }


}
