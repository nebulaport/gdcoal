package com.isoftstone.gdcoal.framework.entity;

import java.io.Serializable;

/**
 * 所有实体类必须继承该类
 */
public class BaseEntity implements Serializable{
    private StringBuffer whereSql;//封装条件
    private Integer pageNow;//页码
    private Integer  pageSize=5;//每页显示几条记录
    private Integer offset=0;//每页第一条记录，在数据库中下标 mysql默认0开始orlacl 1开始
    private Integer total;//总记录数
    private Integer totalPage;//总页数

    public Integer getPageNow() {
        return pageNow;
    }

    public void setPageNow(Integer pageNow) {
        this.pageNow = pageNow;
        //给页码赋值时，计算offset
        this.offset=(this.pageNow-1)*this.pageSize;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getOffset() {
        return offset;
    }

    public void setOffset(Integer offset) {
        this.offset = offset;
    }

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
        //计算总页数
        if(this.total%this.pageSize==0){
            this.totalPage=this.total/this.pageSize;
        }else{
            this.totalPage=this.total/this.pageSize+1;
        }
    }

    public Integer getTotalPage() {
        return totalPage;
    }

    public StringBuffer getWhereSql() {
        return whereSql;
    }

    public void setWhereSql(StringBuffer whereSql) {
        this.whereSql = whereSql;
    }

    public void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }
}
