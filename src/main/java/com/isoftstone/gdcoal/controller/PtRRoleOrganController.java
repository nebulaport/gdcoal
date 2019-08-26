package com.isoftstone.gdcoal.controller;


import com.isoftstone.gdcoal.entity.PtOrganEntity;
import com.isoftstone.gdcoal.entity.PtRRoleOrganEntity;
import com.isoftstone.gdcoal.entity.PtRoleEntity;
import com.isoftstone.gdcoal.service.PtOrganService;
import com.isoftstone.gdcoal.service.PtRRoleOrganService;
import com.isoftstone.gdcoal.service.PtRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.UUID;

/**
 * Created by issuser on 2019/8/17.
 */
@Controller
public class PtRRoleOrganController {
    @Autowired
    private PtRRoleOrganService ptRRoleOrganService;
    @Autowired
    private PtRoleService ptRoleService;
    @Autowired
    private PtOrganService ptOrganService;
    @RequestMapping("/sys/selectPtRRoleOrganPage")
    public String selectPtRRoleOrganPage(Model model, Integer pageNow, String organName1, String organName2,String roleName, String name){
          //查询角色列表
         List<PtRoleEntity> roleList=ptRoleService.selectALL(null);
         model.addAttribute("roleList",roleList);


        //查询所有上级机构列表
        List<PtOrganEntity> organList=ptOrganService.selectParentOrgans();
        model.addAttribute("parentRows",organList);
        if(organName1!=null&&!organName1.equals("")){
            List<PtOrganEntity> organName2_rows= ptOrganService.selectALL(new StringBuffer(" and pt_organ.parent_uuid='"+organName1+"' "));
            model.addAttribute("organName2_rows",organName2_rows);
        }

        StringBuffer whereSql=new StringBuffer("");
        if(roleName!=null&&!roleName.trim().equals("")){
            whereSql.append(" and  pt_role.role_uuid='"+roleName+"' ");
        }
        if(organName2!=null&&!organName2.equals("")){
            whereSql.append(" and pt_organ.ORGAN_UUID='"+organName2+"' ");

        }else{
            if(organName1!=null&&!organName1.equals("")){
                whereSql.append(" and pt_organ.ORGAN_UUID='"+organName1+"' ");

            }
        }

        if(name!=null&&!name.trim().equals("")){
            whereSql.append(" and pt_r_role_organ.name like '%"+name+"%'");
        }

        if(!(pageNow!=null&&!pageNow.toString().equals(""))){
            pageNow=1;
        }


        PtRRoleOrganEntity entity=new PtRRoleOrganEntity();
        entity.setPageNow(pageNow);
        entity.setWhereSql(whereSql);
        entity.setTotal(ptRRoleOrganService.selectTotal(entity));
        List<PtRRoleOrganEntity> list=ptRRoleOrganService.selectForPage(entity);
        model.addAttribute("rows",list);
        model.addAttribute("entity",entity);
        model.addAttribute("name",name);
        model.addAttribute("organName1",organName1);
        model.addAttribute("organName2",organName2);
        model.addAttribute("roleName",roleName);
        return "/views/sys/ptRRoleOrgan.jsp";



    }

    @RequestMapping("/sys/loadAddRRoleOrganPage")
    public String loadAddRRoleOrganPage(Model model){
        //查询所有上级机构列表
        List<PtOrganEntity> organList=ptOrganService.selectParentOrgans();
        model.addAttribute("parentRows",organList);
        //查询角色列表
        List<PtRoleEntity> roleList=ptRoleService.selectALL(null);
        model.addAttribute("roleList",roleList);
        return "/views/sys/addPtRRoleOrgan.jsp";
    }
    @RequestMapping("/sys/savePtRRoleOrgan")
    public String savePtRRoleOrgan(String organ1,String organ2,String roleName,String name){
        PtRRoleOrganEntity entity=new PtRRoleOrganEntity();
        entity.setRoleUuid(roleName);
        entity.setDutyid(UUID.randomUUID().toString().replace("-",""));
        entity.setName(name);
        if(organ1!=null&&!organ1.equals("")){
            if(organ2!=null&&!organ2.equals("")){
                entity.setOrganUuid(organ2);
            }else{
                entity.setOrganUuid(organ1);
            }

        }else{
            entity.setOrganUuid("0");//国电集团
        }
        ptRRoleOrganService.saveRRoleOrgan(entity);
        return "redirect:/sys/selectPtRRoleOrganPage?pageNow=1";

    }
    @RequestMapping("/sys/deletePtRRoleOrgan")
    public String deletePtRRoleOrgan(String dutyid){
        //删除岗位
        int i=ptRRoleOrganService.deleteRRoleOrgan(dutyid);
        //删除岗位与用户关联表数据
        if(i>0){
            ptRRoleOrganService.deleteRUserDytyOrgan(dutyid);
        }
        return "redirect:/sys/selectPtRRoleOrganPage?pageNow=1";
    }
    @RequestMapping("/sys/selectPtRRoleOrganForUpdate")
    public  String selectPtRRoleOrganForUpdate(String dutyid,Model model){
         PtRRoleOrganEntity entity=ptRRoleOrganService.selectById(dutyid);
         model.addAttribute("entity",entity);

        //查询角色列表
        List<PtRoleEntity> roleList=ptRoleService.selectALL(null);
        model.addAttribute("roleList",roleList);
        //查询组织机构列表

        //查询所有上级机构列表
        List<PtOrganEntity> organList=ptOrganService.selectParentOrgans();
        model.addAttribute("parentRows",organList);
        if(entity.getOrganUuid()!=null&&!entity.getOrganUuid().equals("")){
            PtOrganEntity organName2= ptOrganService.selectById(entity.getOrganUuid());
            model.addAttribute("organName2",organName2);
        }


         return "/views/sys/updatePtRRoleOrgan.jsp";
    }
    @RequestMapping("/sys/updatePtRRoleOrgan")
    public String updatePtRRoleOrgan(String dutyid,String organ1,String organ2,String roleName,String name){
        PtRRoleOrganEntity entity=new PtRRoleOrganEntity();
        entity.setRoleUuid(roleName);
        entity.setDutyid(dutyid);
        entity.setName(name);
        if(organ1!=null&&!organ1.equals("")){
            if(organ2!=null&&!organ2.equals("")){
                entity.setOrganUuid(organ2);
            }else{
                entity.setOrganUuid(organ1);
            }
        }else{
            entity.setOrganUuid("0");//国电集团
        }
        ptRRoleOrganService.updateRRoleOrgan(entity);
        return "redirect:/sys/selectPtRRoleOrganPage?pageNow=1";

    }
    //判重
    @RequestMapping("/sys/savePtRRoleOrganValidate")
    @ResponseBody
    public Boolean savePtRRoleOrganValidate(String name,String roleUuid,String organUuid){
            StringBuffer whereSql=new StringBuffer(" and name='"+name+"' and role_uuid='"+roleUuid+"' and organ_uuid='"+organUuid+"'");
            List<PtRRoleOrganEntity> list=ptRRoleOrganService.selectALL(whereSql);
            if(list!=null&&list.size()>0){
                return false;
            }else{
                return true;
            }

    }
}
