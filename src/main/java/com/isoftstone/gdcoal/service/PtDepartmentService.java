package com.isoftstone.gdcoal.service;


import com.isoftstone.gdcoal.dao.PtDepartmentDao;
import com.isoftstone.gdcoal.dao.PtOrganDao;
import com.isoftstone.gdcoal.entity.PtDepartmentEntity;
import com.isoftstone.gdcoal.entity.PtOrganEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by issuser on 2019/8/15.
 */
@Service
public class PtDepartmentService {
    @Autowired
    private PtDepartmentDao ptDepartmentDao;
    @Autowired
    private PtOrganDao ptOrganDao;
    //分页查询部门信息
    public List<PtDepartmentEntity> selectForPage(PtDepartmentEntity entity){

        return ptDepartmentDao.selectForPage(entity);
    }
    //查询总记录数
    public int selectTotal(PtDepartmentEntity entity){
        return ptDepartmentDao.selectTotal(entity);
    }
    //新增
    public int saveEntity(PtDepartmentEntity entity){
        return ptDepartmentDao.saveEntity(entity);
    }
    //删除，按照组织机构修改status=0
    public int deleteByOrganID(String organUUID){
        return ptDepartmentDao.deleteDept(organUUID);
    }
    //修改
    public int updateDepartment(PtDepartmentEntity entity){
        return ptDepartmentDao.updateEntity(entity);
    }
    public PtDepartmentEntity selectForUpdate(String deptId){
        return ptDepartmentDao.selectById(deptId);
    }
    //查询上级组织机构
    public PtOrganEntity selectParentOrgan(String organId){
         return ptOrganDao.selectParentOrgan(organId);
    }
}
