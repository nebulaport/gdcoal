package com.isoftstone.gdcoal.service;


import com.isoftstone.gdcoal.dao.PtRRoleOrganDao;
import com.isoftstone.gdcoal.entity.PtRRoleOrganEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by issuser on 2019/8/17.
 */
@Service
public class PtRRoleOrganService {
    @Autowired
    private PtRRoleOrganDao ptRRoleOrganDao;
    public int selectTotal(PtRRoleOrganEntity entity){
        return ptRRoleOrganDao.selectTotal(entity);
    }
    public List<PtRRoleOrganEntity> selectForPage(PtRRoleOrganEntity entity){
        return ptRRoleOrganDao.selectForPage(entity);
    }
    public int saveRRoleOrgan(PtRRoleOrganEntity entity){
        return ptRRoleOrganDao.saveEntity(entity);
    }
    public int deleteRRoleOrgan(String dutyid){
        return ptRRoleOrganDao.deleteEntity(dutyid);
    }
    public int deleteRUserDytyOrgan(String dutyid){
        return ptRRoleOrganDao.deleteRUserDytyOrgan(dutyid);
    }
    public PtRRoleOrganEntity selectById(String dutyid){
        return ptRRoleOrganDao.selectById(dutyid);
    }
    public int updateRRoleOrgan(PtRRoleOrganEntity entity){
        return ptRRoleOrganDao.updateEntity(entity);
    }
    public List<PtRRoleOrganEntity> selectALL(StringBuffer whereSql){
        return ptRRoleOrganDao.selectALL(whereSql);
    }
}
