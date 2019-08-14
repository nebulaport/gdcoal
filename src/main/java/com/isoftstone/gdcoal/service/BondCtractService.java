package com.isoftstone.gdcoal.service;


import com.isoftstone.gdcoal.dao.PtBondcontractdetailDao;
import com.isoftstone.gdcoal.dao.PtBondcontracttabDao;
import com.isoftstone.gdcoal.dao.TFultbsupplierDao;
import com.isoftstone.gdcoal.entity.PtBondcontractdetailEntity;
import com.isoftstone.gdcoal.entity.PtBondcontracttabEntity;
import com.isoftstone.gdcoal.entity.TFultbsupplierEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by issuser on 2019/8/12.
 */
@Service
public class BondCtractService {
    @Autowired
    private TFultbsupplierDao tFultbsupplierDao;
    @Autowired
    private PtBondcontractdetailDao ptBondcontractdetailDao;
    @Autowired
    private PtBondcontracttabDao ptBondcontracttabDao;
    //查询供应商列表(乙方)
    public List<TFultbsupplierEntity> selectFultbsuppliers(){
        return tFultbsupplierDao.selectALL(null);
    }
    //保存长协对应的煤质信息
    public int saveBondCtractDeatail(PtBondcontractdetailEntity entity){
        return ptBondcontractdetailDao.saveEntity(entity);
    }
    //保存长协交易
    public int saveBondCtract(PtBondcontracttabEntity entity){
        return ptBondcontracttabDao.saveEntity(entity);
    }

    public  PtBondcontracttabEntity selectBondcontracttabList(String contractNo){
        return ptBondcontracttabDao.selectById(contractNo);
    }
    //根据长协交易编号查询详情信息（煤种类信息）
    public List<PtBondcontractdetailEntity> selectPtBondcontractdetailList(String contractNo) {
        String sqlwhere = " and contract_no='" + contractNo + "' ";
        return ptBondcontractdetailDao.selectALL(new StringBuffer(sqlwhere));
    }
    //修改
    public int updateContractStatus(PtBondcontracttabEntity entity){
        return ptBondcontracttabDao.updateEntity(entity);
    }


}
