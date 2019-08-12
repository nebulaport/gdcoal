package com.isoftstone.gdcoal.entity;

import com.isoftstone.gdcoal.framework.entity.BaseEntity;


public class PtOrganPostEntity  extends BaseEntity {
    private String postUuid;

    private String postCode;

    private String organUuid;

    public String getPostUuid() {
        return postUuid;
    }

    public void setPostUuid(String postUuid) {
        this.postUuid = postUuid;
    }

    public String getPostCode() {
        return postCode;
    }

    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }

    public String getOrganUuid() {
        return organUuid;
    }

    public void setOrganUuid(String organUuid) {
        this.organUuid = organUuid;
    }
}