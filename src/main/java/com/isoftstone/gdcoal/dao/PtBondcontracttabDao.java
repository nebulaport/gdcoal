package com.isoftstone.gdcoal.dao;

 import com.isoftstone.gdcoal.entity.PtBondcontracttabEntity;
 import com.isoftstone.gdcoal.framework.dao.BaseDao;

 import java.util.List;
 import java.util.Map;

public interface PtBondcontracttabDao extends BaseDao<PtBondcontracttabEntity> {
 //查询长协交易信息
 public List<Map<String,Object>> selectBondcontractInfo(PtBondcontracttabEntity entity);
 public int selectBondcontractInfoTotal(PtBondcontracttabEntity entity);
}