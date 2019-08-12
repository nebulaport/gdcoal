package com.isoftstone.gdcoal.entity;

import com.isoftstone.gdcoal.framework.entity.BaseEntity;


public class TFulblacklistEntity extends BaseEntity {
    private String blackid;

    private String id;

    private String organCode;

    private String supplierid;

    private String createuser;

    private String createdate;

    private String blackreason;

    private Integer flowstate;

    private String remark;

    public String getBlackid() {
        return blackid;
    }

    public void setBlackid(String blackid) {
        this.blackid = blackid;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getOrganCode() {
        return organCode;
    }

    public void setOrganCode(String organCode) {
        this.organCode = organCode;
    }

    public String getSupplierid() {
        return supplierid;
    }

    public void setSupplierid(String supplierid) {
        this.supplierid = supplierid;
    }

    public String getCreateuser() {
        return createuser;
    }

    public void setCreateuser(String createuser) {
        this.createuser = createuser;
    }

    public String getCreatedate() {
        return createdate;
    }

    public void setCreatedate(String createdate) {
        this.createdate = createdate;
    }

    public String getBlackreason() {
        return blackreason;
    }

    public void setBlackreason(String blackreason) {
        this.blackreason = blackreason;
    }

    public Integer getFlowstate() {
        return flowstate;
    }

    public void setFlowstate(Integer flowstate) {
        this.flowstate = flowstate;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}