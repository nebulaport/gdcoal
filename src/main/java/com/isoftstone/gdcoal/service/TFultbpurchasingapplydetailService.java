package com.isoftstone.gdcoal.service;

import com.isoftstone.gdcoal.dao.TFultbpurchasingapplydetailDao;
import com.isoftstone.gdcoal.dao.TFultbsupplierDao;
import com.isoftstone.gdcoal.entity.TFultbpurchasingapplydetailEntity;
import com.isoftstone.gdcoal.entity.TFultbsupplierEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName TFultbpurchasingapplydetailService
 * @Description TODO
 * @Author NebulaPort
 * @Date 2019/8/14 14:59
 */
@Service
public class TFultbpurchasingapplydetailService {
    @Autowired
    private TFultbpurchasingapplydetailDao tFultbpurchasingapplydetailDao;
    @Autowired
    private TFultbsupplierDao tFultbsupplierDao;

    public int saveApplydetail(TFultbpurchasingapplydetailEntity entity){
        return tFultbpurchasingapplydetailDao.saveEntity(entity);
    }

    //查询总记录数
    public int selectTotal(TFultbpurchasingapplydetailEntity entity) {
        return tFultbpurchasingapplydetailDao.selectTotal(entity);
    }

    public List<TFultbpurchasingapplydetailEntity> selectApplydetailPage(TFultbpurchasingapplydetailEntity entity){
        return tFultbpurchasingapplydetailDao.selectForPage(entity);
    }

    public int deleteApplydetail(String id){
        return tFultbpurchasingapplydetailDao.deleteEntity(id);
    }

    public TFultbpurchasingapplydetailEntity selectById(String id){
        return tFultbpurchasingapplydetailDao.selectById(id);
    }
    public int updateApplydetail(TFultbpurchasingapplydetailEntity entity){
        return tFultbpurchasingapplydetailDao.updateEntity(entity);
    }
    //查询供应商列表(乙方)
    public List<TFultbsupplierEntity> selectFultbsuppliers(){
        return tFultbsupplierDao.selectALL(null);
    }

}
