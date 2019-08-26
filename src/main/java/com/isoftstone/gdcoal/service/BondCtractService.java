package com.isoftstone.gdcoal.service;


import com.isoftstone.gdcoal.dao.PtBondcontractdetailDao;
import com.isoftstone.gdcoal.dao.PtBondcontractsupplementDao;
import com.isoftstone.gdcoal.dao.PtBondcontracttabDao;
import com.isoftstone.gdcoal.dao.TFultbsupplierDao;
import com.isoftstone.gdcoal.entity.PtBondcontractdetailEntity;
import com.isoftstone.gdcoal.entity.PtBondcontractsupplementEntity;
import com.isoftstone.gdcoal.entity.PtBondcontracttabEntity;
import com.isoftstone.gdcoal.entity.TFultbsupplierEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

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
    @Autowired
    private PtBondcontractsupplementDao ptBondcontractsupplementDao;
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

    //长协交易查看
    public List<Map<String,Object>> selectBondcontractInfo(PtBondcontracttabEntity entity){
        return ptBondcontracttabDao.selectBondcontractInfo(entity);
    }
    public int selectBondcontractInfoTotal(PtBondcontracttabEntity entity){
        return ptBondcontracttabDao.selectBondcontractInfoTotal(entity);
    }
    //保存长协议补充信息
    public int saveBondContractSupportInfo(PtBondcontractsupplementEntity entity){
        return ptBondcontractsupplementDao.saveEntity(entity);
    }
    //查询补充协议信息（长协议编号）
    public List<PtBondcontractsupplementEntity> selectBondcontractSupportList(String contractNo){
        return ptBondcontractsupplementDao.selectALL(new StringBuffer(" and Contract_no='"+contractNo+"' "));
    }
    //删除补充协议
    public int deleteContractSupplement(String supplementid){
        return ptBondcontractsupplementDao.deleteEntity(supplementid);
    }
    //查询补充信息
    public PtBondcontractsupplementEntity selectPtBondcontractsupplement(String id){
        return ptBondcontractsupplementDao.selectById(id);
    }

}
