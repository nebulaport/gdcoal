package com.isoftstone.gdcoal.entity;


import com.isoftstone.gdcoal.framework.entity.BaseEntity;

public class PtBondcontractdetailEntity  extends BaseEntity {
    private String detailid;

    private String coaltype;

    private Double purchasenum;

    private Double calorificnum;

    private String createdate;

    private String createuser;

    private String contractNo;

    public String getDetailid() {
        return detailid;
    }

    public void setDetailid(String detailid) {
        this.detailid = detailid;
    }

    public String getCoaltype() {
        return coaltype;
    }

    public void setCoaltype(String coaltype) {
        this.coaltype = coaltype;
    }

    public Double getPurchasenum() {
        return purchasenum;
    }

    public void setPurchasenum(Double purchasenum) {
        this.purchasenum = purchasenum;
    }

    public Double getCalorificnum() {
        return calorificnum;
    }

    public void setCalorificnum(Double calorificnum) {
        this.calorificnum = calorificnum;
    }

    public String getCreatedate() {
        return createdate;
    }

    public void setCreatedate(String createdate) {
        this.createdate = createdate;
    }

    public String getCreateuser() {
        return createuser;
    }

    public void setCreateuser(String createuser) {
        this.createuser = createuser;
    }

    public String getContractNo() {
        return contractNo;
    }

    public void setContractNo(String contractNo) {
        this.contractNo = contractNo;
    }
}