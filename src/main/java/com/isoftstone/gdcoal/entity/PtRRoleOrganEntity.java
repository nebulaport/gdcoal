package com.isoftstone.gdcoal.entity;

import com.isoftstone.gdcoal.framework.entity.BaseEntity;

public class PtRRoleOrganEntity  extends BaseEntity {
    private String dutyid;

    private String name;

    private String organUuid;

    private String roleUuid;

    public String getDutyid() {
        return dutyid;
    }

    public void setDutyid(String dutyid) {
        this.dutyid = dutyid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getOrganUuid() {
        return organUuid;
    }

    public void setOrganUuid(String organUuid) {
        this.organUuid = organUuid;
    }

    public String getRoleUuid() {
        return roleUuid;
    }

    public void setRoleUuid(String roleUuid) {
        this.roleUuid = roleUuid;
    }
}