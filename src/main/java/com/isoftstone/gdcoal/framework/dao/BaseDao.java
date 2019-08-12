package com.isoftstone.gdcoal.framework.dao;

import com.isoftstone.gdcoal.framework.entity.BaseEntity;

import java.util.List;

/**
 *  要求所有dao层接口继承该接口
 */
public interface BaseDao<T extends BaseEntity> extends BaseDaoSupport{
    public int saveEntity(T entity);
    public int deleteEntity(String id);
    public int updateEntity(T entity);
    public T selectById(String id) ;
    public List<T> selectALL(StringBuffer whereSql);
    public int selectTotal(T entity);
    public List<T> selectForPage(T entity);
}
