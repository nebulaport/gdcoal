package com.isoftstone.gdcoal.entity;

import com.isoftstone.gdcoal.framework.entity.BaseEntity;


/**
 * Created by issuser on 2019/8/8.
 */
public class PtRoleEntity extends BaseEntity {
    private String roleUuid;
    private String roleId;
    private String roleName;

    public String getRoleUuid() {
        return roleUuid;
    }

    public void setRoleUuid(String roleUuid) {
        this.roleUuid = roleUuid;
    }

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }
}
