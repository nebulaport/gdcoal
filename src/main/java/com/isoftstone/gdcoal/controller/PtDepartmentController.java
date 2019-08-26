package com.isoftstone.gdcoal.controller;


import com.isoftstone.gdcoal.entity.PtDepartmentEntity;
import com.isoftstone.gdcoal.entity.PtOrganEntity;
import com.isoftstone.gdcoal.service.PtDepartmentService;
import com.isoftstone.gdcoal.service.PtOrganService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.UUID;

/**
 * Created by issuser on 2019/8/15.
 */
@Controller
public class PtDepartmentController {
    @Autowired
    private PtDepartmentService ptDepartmentService;
    @Autowired
    private PtOrganService ptOrganService;
    @RequestMapping("/sys/selectDepartmentPage")
    public String selectDepartmentPage(Model model, Integer pageNow, String branchName, String estate, String flag){
              StringBuffer whereSql=new StringBuffer("");
              if(branchName!=null&&!branchName.equals("")){
                  whereSql.append(" and d.BRANCH_NAME like '%"+branchName+"%' ");
              }
              if(estate!=null&&!estate.equals("")){
                  whereSql.append(" and d.estate='"+estate+"'");
              }
              if(flag!=null&&!flag.equals("")){
                  whereSql.append(" and d.flag ='"+flag+"'");
              }
            if(!(pageNow!=null&&!pageNow.toString().equals(""))){
                pageNow=1;
            }


        PtDepartmentEntity entity=new PtDepartmentEntity();
        entity.setPageNow(pageNow);
        entity.setWhereSql(whereSql);
        entity.setTotal(ptDepartmentService.selectTotal(entity));
        List<PtDepartmentEntity> list=ptDepartmentService.selectForPage(entity);
        model.addAttribute("rows",list);
        model.addAttribute("entity",entity);
        model.addAttribute("branchName",branchName);
        model.addAttribute("estate",estate);
        model.addAttribute("flag",flag);
        return "/views/sys/ptDepartment.jsp";
    }
    //加载新增页面
    @RequestMapping("/sys/loadAddDepartMentPage")
    public String loadAddDepartMentPage(Model model){
        //查询所有上级机构列表
        List<PtOrganEntity> parentList=ptOrganService.selectParentOrgans();
        model.addAttribute("parentRows",parentList);
        return "/views/sys/addPtDepartment.jsp";
    }
    @RequestMapping("/sys/addDeptment")
    public String addDeptment(String branchName,String branchType,String flag,String belongCenter,
                              String bewrite,String organUUID){
        PtDepartmentEntity entity=new PtDepartmentEntity();
        entity.setBelongCenter(belongCenter);
        entity.setFlag(flag);
        entity.setBranchType(branchType);
        entity.setBranchName(branchName);
        entity.setBewrite(bewrite);
        if(organUUID!=null&&!organUUID.equals("")){
            entity.setOrganUuid(organUUID);
        }else{//默认国电集团下部门
            entity.setOrganUuid("0");//默认uuid为0
        }

        entity.setId(UUID.randomUUID().toString().replace("-",""));
        entity.setVersion(1);
        entity.setEstate("N");
        entity.setStatus("1");
        int i=ptDepartmentService.saveEntity(entity);
        if(i>0){
            return "redirect:/sys/selectDepartmentPage?pageNow=1";
        }
        return "/error.jsp";
    }

    //删除
    @RequestMapping("/sys/deleteDeptment")
    public String deleteDeptment(String deptId){
         PtDepartmentEntity entity=new PtDepartmentEntity();
         entity.setId(deptId);
         entity.setStatus("0");//删除状态
          ptDepartmentService.updateDepartment(entity);
        return "redirect:/sys/selectDepartmentPage?pageNow=1";
    }

    //
    @RequestMapping("/sys/selectDeptmentForUpdate")
    public String selectDeptmentForUpdate(String deptId,Model model){
            PtDepartmentEntity entity=ptDepartmentService.selectForUpdate(deptId);
            model.addAttribute("entity",entity);
            //查询所有组织机构列表
        List<PtOrganEntity> parentList=ptOrganService.selectParentOrgans();
        model.addAttribute("parentRows",parentList);

            //查询上级部门
           PtOrganEntity organEntity= ptDepartmentService.selectParentOrgan(entity.getOrganUuid());
           model.addAttribute("organEntity",organEntity);
        return "/views/sys/updateDepartment.jsp";
    }
    @RequestMapping("/sys/updateDept")
    public String  updateDept(String deptId,String branchName,String branchType,String flag,String belongCenter,
                              String bewrite,String organUUID){

        PtDepartmentEntity entity=new PtDepartmentEntity();
        entity.setBelongCenter(belongCenter);
        entity.setFlag(flag);
        entity.setBranchType(branchType);
        entity.setBranchName(branchName);
        entity.setBewrite(bewrite);
        entity.setId(deptId);
        ptDepartmentService.updateDepartment(entity);
        return "redirect:/sys/selectDepartmentPage?pageNow=1";
    }
}
