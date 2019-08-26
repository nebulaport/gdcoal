package com.isoftstone.gdcoal.service;


import com.isoftstone.gdcoal.dao.PtMenuDirectoryDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * Created by issuser on 2019/8/22.
 */
@Service
public class PtMenuService {
    @Autowired
    private PtMenuDirectoryDao ptMenuDirectoryDao;
    public List<HashMap<String,Object>> selectUserMenuDir(String userid){
        return ptMenuDirectoryDao.selectUserMenuDir(userid);
    }
    public List<HashMap<String,Object>> selectAllMenus(String menuLeve){
        return ptMenuDirectoryDao.selectAllMenus(menuLeve);
    }
}
