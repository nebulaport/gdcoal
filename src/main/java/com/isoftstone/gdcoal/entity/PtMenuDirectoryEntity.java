package com.isoftstone.gdcoal.entity;

import com.isoftstone.gdcoal.framework.entity.BaseEntity;


public class PtMenuDirectoryEntity   extends BaseEntity {
    private String dirCode;

    private String dirName;

    private Short dirLevelNumber;

    private String dirType;

    private String resourceId;

    private String parentId;

    private String isitem;

    private Integer dirOrder;

    private String status;

    private String flag;

    private String menuGroupId;

    private String resUuid;

    private String realid;

    public String getDirCode() {
        return dirCode;
    }

    public void setDirCode(String dirCode) {
        this.dirCode = dirCode;
    }

    public String getDirName() {
        return dirName;
    }

    public void setDirName(String dirName) {
        this.dirName = dirName;
    }

    public Short getDirLevelNumber() {
        return dirLevelNumber;
    }

    public void setDirLevelNumber(Short dirLevelNumber) {
        this.dirLevelNumber = dirLevelNumber;
    }

    public String getDirType() {
        return dirType;
    }

    public void setDirType(String dirType) {
        this.dirType = dirType;
    }

    public String getResourceId() {
        return resourceId;
    }

    public void setResourceId(String resourceId) {
        this.resourceId = resourceId;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public String getIsitem() {
        return isitem;
    }

    public void setIsitem(String isitem) {
        this.isitem = isitem;
    }

    public Integer getDirOrder() {
        return dirOrder;
    }

    public void setDirOrder(Integer dirOrder) {
        this.dirOrder = dirOrder;
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

    public String getMenuGroupId() {
        return menuGroupId;
    }

    public void setMenuGroupId(String menuGroupId) {
        this.menuGroupId = menuGroupId;
    }

    public String getResUuid() {
        return resUuid;
    }

    public void setResUuid(String resUuid) {
        this.resUuid = resUuid;
    }

    public String getRealid() {
        return realid;
    }

    public void setRealid(String realid) {
        this.realid = realid;
    }
}