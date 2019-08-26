package com.isoftstone.gdcoal.dao;


import com.isoftstone.gdcoal.entity.PtOrganEntity;
import com.isoftstone.gdcoal.framework.dao.BaseDao;

import java.util.List;
import java.util.Map;


/**
 * Created by issuser on 2019/7/2.
 */
public interface PtOrganDao extends BaseDao<PtOrganEntity> {
    public List<Map<String,Object>> selectOrgansPage(PtOrganEntity entity);
    public PtOrganEntity selectParentOrgan(String organId);
}
