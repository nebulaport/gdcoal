package com.isoftstone.gdcoal.service;

import com.isoftstone.gdcoal.dao.PtRoleDao;
import com.isoftstone.gdcoal.entity.PtRoleEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by issuser on 2019/8/17.
 */
@Service
public class PtRoleService {
    @Autowired
    private PtRoleDao ptRoleDao;
    public int selectTotal(PtRoleEntity entity){
        return  ptRoleDao.selectTotal(entity);
    }
    public List<PtRoleEntity> selectPtRolePage(PtRoleEntity entity){
        return ptRoleDao.selectForPage(entity);
    }
    public int savePtRole(PtRoleEntity entity){
        return ptRoleDao.saveEntity(entity);
    }
    public int deleteRole(String roleId){
        return ptRoleDao.deleteEntity(roleId);
    }
    public PtRoleEntity selectByRoleUUid(String roleId){
        return ptRoleDao.selectById(roleId);
    }
    public int updateRole(PtRoleEntity entity){
        return ptRoleDao.updateEntity(entity);
    }
    public List<PtRoleEntity> selectALL(StringBuffer whereSql){
        return ptRoleDao.selectALL(whereSql);
    }
}
