package com.isoftstone.gdcoal.entity;

import com.isoftstone.gdcoal.framework.entity.BaseEntity;


public class PtDepartmentEntity extends BaseEntity {
    private String id;

    private String organUuid;

    private String agencyId;

    private String branchCode;

    private String branchName;

    private String branchType;

    private String belongCenter;

    private String bewrite;

    private String estate;

    private String modifierid;

    private String modtime;

    private String commiterid;

    private String status;

    private String flag;

    private Integer version;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getOrganUuid() {
        return organUuid;
    }

    public void setOrganUuid(String organUuid) {
        this.organUuid = organUuid;
    }

    public String getAgencyId() {
        return agencyId;
    }

    public void setAgencyId(String agencyId) {
        this.agencyId = agencyId;
    }

    public String getBranchCode() {
        return branchCode;
    }

    public void setBranchCode(String branchCode) {
        this.branchCode = branchCode;
    }

    public String getBranchName() {
        return branchName;
    }

    public void setBranchName(String branchName) {
        this.branchName = branchName;
    }

    public String getBranchType() {
        return branchType;
    }

    public void setBranchType(String branchType) {
        this.branchType = branchType;
    }

    public String getBelongCenter() {
        return belongCenter;
    }

    public void setBelongCenter(String belongCenter) {
        this.belongCenter = belongCenter;
    }

    public String getBewrite() {
        return bewrite;
    }

    public void setBewrite(String bewrite) {
        this.bewrite = bewrite;
    }

    public String getEstate() {
        return estate;
    }

    public void setEstate(String estate) {
        this.estate = estate;
    }

    public String getModifierid() {
        return modifierid;
    }

    public void setModifierid(String modifierid) {
        this.modifierid = modifierid;
    }

    public String getModtime() {
        return modtime;
    }

    public void setModtime(String modtime) {
        this.modtime = modtime;
    }

    public String getCommiterid() {
        return commiterid;
    }

    public void setCommiterid(String commiterid) {
        this.commiterid = commiterid;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag;
    }

    public Integer getVersion() {
        return version;
    }

    public void setVersion(Integer version) {
        this.version = version;
    }
}