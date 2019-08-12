package com.isoftstone.gdcoal.entity;

import com.isoftstone.gdcoal.framework.entity.BaseEntity;


public class PtRUserDutyOrgEntity  extends BaseEntity {
    private String userDutyid;

    private String userUuid;

    private String dutyid;

    public String getUserDutyid() {
        return userDutyid;
    }

    public void setUserDutyid(String userDutyid) {
        this.userDutyid = userDutyid;
    }

    public String getUserUuid() {
        return userUuid;
    }

    public void setUserUuid(String userUuid) {
        this.userUuid = userUuid;
    }

    public String getDutyid() {
        return dutyid;
    }

    public void setDutyid(String dutyid) {
        this.dutyid = dutyid;
    }
}