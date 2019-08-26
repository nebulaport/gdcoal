package com.isoftstone.gdcoal.dao;

import com.isoftstone.gdcoal.entity.PtRRoleOrganEntity;
import com.isoftstone.gdcoal.framework.dao.BaseDao;


 

public interface PtRRoleOrganDao extends BaseDao<PtRRoleOrganEntity> {
    public  int deleteRUserDytyOrgan(String dutyid);
}