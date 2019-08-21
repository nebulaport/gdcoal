package com.isoftstone.gdcoal.service;

import com.isoftstone.gdcoal.dao.TFultbtemplateDao;
import com.isoftstone.gdcoal.entity.TFultbtemplateEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

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

    //提交采购申请信息
    public int submitTFultbtemplate(TFultbtemplateEntity entity){
         return tFultbtemplateDao.updateEntity(entity);
    }

    //删除采购申请
    public int deleteTFultbtemplate(String billnumber){
         return tFultbtemplateDao.deleteEntity(billnumber);
    }

    //修改采购申请信息
    public int updateTFultbtemplate(TFultbtemplateEntity entity){
        return tFultbtemplateDao.updateEntity(entity);
    }

    //按采购申请单号查询
    public TFultbtemplateEntity selectByIdTFultbtemplate(String billnumber){
         return tFultbtemplateDao.selectById(billnumber);
    }

    //按采购申请单状态查询
    public List<TFultbtemplateEntity> selectByStatusTFultbtemplate(String status){
        String whereSql = " and status = '" + status + "'";
        return tFultbtemplateDao.selectALL(new StringBuffer(whereSql));
    }

    //总记录数
    public int selectTotalTFultbtemplate(TFultbtemplateEntity entity){
        return tFultbtemplateDao.selectTotal(entity);
    }

    //分页查询
    public List<TFultbtemplateEntity> selectPageTFultbtemplate(TFultbtemplateEntity entity){
        return tFultbtemplateDao.selectForPage(entity);
    }


}
