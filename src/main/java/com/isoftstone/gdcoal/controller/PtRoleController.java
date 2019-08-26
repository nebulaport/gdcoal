package com.isoftstone.gdcoal.controller;


import com.isoftstone.gdcoal.entity.PtRoleEntity;
import com.isoftstone.gdcoal.service.PtRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * Created by issuser on 2019/8/17.
 */
@Controller
public class PtRoleController {
    @Autowired
    private PtRoleService ptRoleService;
    @RequestMapping("/sys/selectRolePage")
    public String selectRolePage(String roleName, Integer pageNow,   Model model){
        PtRoleEntity entity=new PtRoleEntity();
        StringBuffer whereSql=null;
        if(roleName!=null&&!roleName.trim().equals("")){
             whereSql=new StringBuffer(" and role_name like '%"+roleName+"%' ");
        }
        entity.setWhereSql(whereSql);
        entity.setTotal(ptRoleService.selectTotal(entity));
        List<PtRoleEntity> list=ptRoleService.selectPtRolePage(entity);

        model.addAttribute("rows",list);
        Map<String,Object> map=new HashMap<String,Object>();
        map.put("entity",entity);
        map.put("roleName",roleName);
        model.addAllAttributes(map);
        return "/views/sys/ptRole.jsp";
    }
    @RequestMapping("/sys/saveRole")
    public String saveRole(String roleName){
        PtRoleEntity entity=new PtRoleEntity();
        entity.setRoleName(roleName);
        entity.setRoleUuid(UUID.randomUUID().toString().replace("-",""));
        entity.setRoleId(entity.getRoleUuid());
        ptRoleService.savePtRole(entity);

        return "redirect:/sys/selectRolePage?pageNow=1";
    }
    @RequestMapping("/sys/logAddRolePage")
    public String logAddRolePage(){
           return "/views/sys/addPtRole.jsp";
    }
    @RequestMapping("/sys/deleteRole")
    public String deleteRole(String roleId){
          ptRoleService.deleteRole(roleId);
        //将岗位表角色置空（）

        return "redirect:/sys/selectRolePage?pageNow=1";
    }
    @RequestMapping("/sys/selectRoleForUpdate")
    public String selectRoleForUpdate(String roleId,Model model){
        PtRoleEntity entity=   ptRoleService.selectByRoleUUid(roleId);
        model.addAttribute("entity",entity);
        return "/views/sys/updatePtRole.jsp";
    }
    @RequestMapping("/sys/updateRole")
    public  String updateRole(String roleId,String roleName){
        PtRoleEntity entity=new PtRoleEntity();
        entity.setRoleName(roleName);
        entity.setRoleUuid(roleId);

        ptRoleService.updateRole(entity);
        return "redirect:/sys/selectRolePage?pageNow=1";
    }

    @RequestMapping("/sys/saveRoleValidate")
    @ResponseBody
    public Boolean saveRoleValidate(String roleName){
        List<PtRoleEntity> list=ptRoleService.selectALL(new StringBuffer(" and pt_role.role_name ='"+roleName+"' "));
        if(list!=null&&list.size()>0){
            return false;
        }
       return true;
    }
    @RequestMapping("/sys/updateRoleValidate")
    @ResponseBody
    public Boolean updateRoleValidate(String roleName){
        List<PtRoleEntity> list=ptRoleService.selectALL(new StringBuffer(" and pt_role.role_name ='"+roleName+"' "));
        if(list!=null&&list.size()>0){
            return false;
        }
        return true;
    }
}
