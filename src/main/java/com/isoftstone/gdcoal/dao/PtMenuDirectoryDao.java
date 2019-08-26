package com.isoftstone.gdcoal.dao;

import com.isoftstone.gdcoal.entity.PtMenuDirectoryEntity;
import com.isoftstone.gdcoal.framework.dao.BaseDao;


import java.util.HashMap;
import java.util.List;
 

public interface PtMenuDirectoryDao extends BaseDao<PtMenuDirectoryEntity> {
    public List<HashMap<String,Object>>selectUserMenuDir(String userid);
    public List<HashMap<String,Object>>selectAllMenus(String menuLeve);
}