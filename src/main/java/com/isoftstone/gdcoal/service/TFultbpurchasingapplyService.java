package com.isoftstone.gdcoal.service;

import com.isoftstone.gdcoal.dao.TFultbpurchasingapplyDao;
import com.isoftstone.gdcoal.entity.TFultbpurchasingapplyEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName TFultbpurchasingapplyService
 * @Description
 * @Author NebulaPort
 * @Date 2019/8/13 10:18
 */
@Service
public class TFultbpurchasingapplyService {
    @Autowired
    private TFultbpurchasingapplyDao tFultbpurchasingapplyDao;

    public int savePurchapply(TFultbpurchasingapplyEntity entity){
        return tFultbpurchasingapplyDao.saveEntity(entity);
    }

    //查询总记录数
    public int selectTotal(TFultbpurchasingapplyEntity entity) {
        return tFultbpurchasingapplyDao.selectTotal(entity);
    }

    public List<TFultbpurchasingapplyEntity> selectPurchapplyPage(TFultbpurchasingapplyEntity entity){
        return tFultbpurchasingapplyDao.selectForPage(entity);
    }

    public int deletePurchapply(String id){
        return tFultbpurchasingapplyDao.deleteEntity(id);
    }

    public TFultbpurchasingapplyEntity selectById(String id){
        return tFultbpurchasingapplyDao.selectById(id);
    }
    public int updatePurchapply(TFultbpurchasingapplyEntity entity){
        return tFultbpurchasingapplyDao.updateEntity(entity);
    }
}
