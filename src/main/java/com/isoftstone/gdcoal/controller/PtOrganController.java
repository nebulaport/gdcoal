package com.isoftstone.gdcoal.controller;

import com.isoftstone.gdcoal.entity.PtOrganEntity;
import com.isoftstone.gdcoal.service.PtOrganService;
import com.isoftstone.gdcoal.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * Created by issuser on 2019/8/9.
 */
@Controller//让spring实例化该类
public class PtOrganController {
    @Autowired
    private PtOrganService ptOrganService;
    //加载organ.jsp页面
    @RequestMapping("/sys/logOrganPage")
    public String loadOrganPage(){
        System.out.println("假造organ.jsp页面");
        return "/views/sys/addPtOrgan.jsp";//返回值为String类型，则可以直接跳转页面
    }
    //保存组织机构信息
    @RequestMapping("/sys/saveOrgan")
    public  String saveOrgan(String organName,String organType,String inUse,String desc){//接受请求数据，通过参数接受
        PtOrganEntity entity=new PtOrganEntity();
        String id=UUID.randomUUID().toString();
        entity.setOrganUuid(id);
        entity.setOrganCode(id.replace("-",""));
        entity.setDescription(desc);
        entity.setInUse(inUse);
        entity.setOrganName(organName);
        entity.setOrganType(organType);
        entity.setModifierid("101");//暂时写死
        entity.setModtime(DateUtils.getCurrentTime());

        //调用保存方法
        int i=ptOrganService.saveOrgan(entity);
        if(i>0){
            return "redirect:/sys/selectOrganPage?pageNow=1";//后台跳转后台(一定要使用客户端跳转方式)
        }
        return "/error.jsp";
    }

    //分页查询
    @RequestMapping("/sys/selectOrganPage")
    public String selectOrganPage(String organName, Integer pageNow, HttpServletRequest request,Model model){
        if(!(pageNow!=null&&!pageNow.toString().equals(""))){
            pageNow=1;
        }
        StringBuffer whereSql=new StringBuffer("");
        PtOrganEntity entity=new PtOrganEntity();
        entity.setPageNow(pageNow);
        if(organName!=null&&!organName.trim().equals("")){
            whereSql.append(" and pt_organ.ORGAN_NAME like '%"+organName+"%' ");
        }
        entity.setWhereSql(whereSql);
        entity.setTotal(ptOrganService.selectTotal(entity));
        List<PtOrganEntity> list=ptOrganService.selectOrganPage(entity);
        //请对象HttpServletRequest   HttpServletResponse
       // request.setAttribute("rows",list);//将数据放入请求对象，该数据在本次请求中一直存在
        //request.setAttribute("entity",entity);
       // request.setAttribute("organName",organName);
        model.addAttribute("rows",list);
        Map<String,Object> map=new HashMap<String,Object>();
        map.put("entity",entity);
        map.put("organName",organName);
        model.addAllAttributes(map);


        return "/views/sys/PtOrgan.jsp";//默认即服务器端跳转方式
    }

    //删除
    @RequestMapping("/sys/deleteOrgan")
    public String deleteOrgan(String organId){
        int i=ptOrganService.deleteOrgan(organId);
        if(i>0){
            return "redirect:/sys/selectOrganPage?pageNow=1";
        }else{
            return "/error.jsp";
        }
    }

    @RequestMapping("/sys/selectById")
    public String selectById(String organId,Model model){
          PtOrganEntity entity=ptOrganService.selectById(organId);
          model.addAttribute("row",entity);

        return "/views/sys/updatePtOrgan.jsp";
    }

    //修改
    @RequestMapping("/sys/updateOrgan")
    public String udpateOrgan(String organId,String organName,String organType,String inUse,String desc){
        PtOrganEntity entity=new PtOrganEntity();
        entity.setOrganName(organName);
        entity.setInUse(inUse);
        entity.setOrganUuid(organId);
        entity.setDescription(desc);
        entity.setOrganType(organType);
        entity.setModifierid("101");//暂时写死
        entity.setModtime(DateUtils.getCurrentTime());

        int i=  ptOrganService.updateOrgan(entity);
        if(i>0){
            return "redirect:/sys/selectOrganPage?pageNow=1";//后台跳转后台(一定要使用客户端跳转方式)
        }
        return "/error.jsp";
    }
}
