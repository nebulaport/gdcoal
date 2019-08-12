package com.isoftstone.gdcoal.entity;


import com.isoftstone.gdcoal.framework.entity.BaseEntity;

public class PtBondcontractsupplementEntity extends BaseEntity {
    private String supplementid;

    private String supplementdesc;

    private String uploaddate;

    private String supplementfilename;

    private String supplementfileurl;

    private String uploaduser;

    private String contractNo;

    public String getSupplementid() {
        return supplementid;
    }

    public void setSupplementid(String supplementid) {
        this.supplementid = supplementid;
    }

    public String getSupplementdesc() {
        return supplementdesc;
    }

    public void setSupplementdesc(String supplementdesc) {
        this.supplementdesc = supplementdesc;
    }

    public String getUploaddate() {
        return uploaddate;
    }

    public void setUploaddate(String uploaddate) {
        this.uploaddate = uploaddate;
    }

    public String getSupplementfilename() {
        return supplementfilename;
    }

    public void setSupplementfilename(String supplementfilename) {
        this.supplementfilename = supplementfilename;
    }

    public String getSupplementfileurl() {
        return supplementfileurl;
    }

    public void setSupplementfileurl(String supplementfileurl) {
        this.supplementfileurl = supplementfileurl;
    }

    public String getUploaduser() {
        return uploaduser;
    }

    public void setUploaduser(String uploaduser) {
        this.uploaduser = uploaduser;
    }

    public String getContractNo() {
        return contractNo;
    }

    public void setContractNo(String contractNo) {
        this.contractNo = contractNo;
    }
}