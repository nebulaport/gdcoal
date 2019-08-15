package com.isoftstone.gdcoal.service;

import com.isoftstone.gdcoal.dao.TFultbtemplateDao;
import com.isoftstone.gdcoal.entity.TFultbtemplateEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by tupingping on 2019/8/13.
 */
@Service
public class TFultbtemplateService {
    @Autowired
    private TFultbtemplateDao tFultbtemplateDao;

    // 保存采购申请信息
     public int saveTFultbtemplate(TFultbtemplateEntity entity){
         return tFultbtemplateDao.saveEntity(entity);
     }

    //按采购申请但编号查询
    public  TFultbtemplateEntity selectTFultbtemplateList(String templateid){
        return tFultbtemplateDao.selectById(templateid);
    }

    //查询所有采购申请信息
    public List<TFultbtemplateEntity> selectALLTFultbtemplate(){
        return tFultbtemplateDao.selectALL(null);
    }

    //修改采购申请信息
    public int updateTFultbtemplate(TFultbtemplateEntity entity){
        return tFultbtemplateDao.updateEntity(entity);
    }

    //删除采购申请信息
    public int deleteTFultbtemplate(String templateid){
        return tFultbtemplateDao.deleteEntity(templateid);
    }
}
