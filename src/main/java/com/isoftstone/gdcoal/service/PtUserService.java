package com.isoftstone.gdcoal.service;


import com.isoftstone.gdcoal.dao.PtUserDao;
import com.isoftstone.gdcoal.entity.PtUserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by issuser on 2019/8/22.
 */
@Service
public class PtUserService {
    @Autowired
    private PtUserDao ptUserDao;
    public PtUserEntity selectPtUserLogin(String username){

       List<PtUserEntity> list= ptUserDao.selectALL(new StringBuffer( " and USERNAME='"+username+"' "));
       if(list!=null&&list.size()>0){
           return list.get(0);
       }else{
           return null;
       }
    }

}
