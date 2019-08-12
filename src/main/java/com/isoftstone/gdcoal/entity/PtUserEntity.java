package com.isoftstone.gdcoal.entity;


import com.isoftstone.gdcoal.framework.entity.BaseEntity;

public class PtUserEntity extends BaseEntity {
    private String userUuid;

    private String id;

    private String username;

    private String password;

    private String email;

    private String mobile;

    private Short enabled;

    private Short accountNonExpired;

    private Short credentialsNonExpired;

    private Short accountNonLocked;

    private String organUuid;

    private String niceName;

    private Short isAdmin;

    private Short maximumsessions;

    private String registerdate;

    private String lastlogintime;

    private String pwdque;

    private String pwdans;

    private String remark;

    private String depid;

    private String status;

    private String modtime;

    private String modifierid;

    private Short isSum;

    public String getUserUuid() {
        return userUuid;
    }

    public void setUserUuid(String userUuid) {
        this.userUuid = userUuid;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public Short getEnabled() {
        return enabled;
    }

    public void setEnabled(Short enabled) {
        this.enabled = enabled;
    }

    public Short getAccountNonExpired() {
        return accountNonExpired;
    }

    public void setAccountNonExpired(Short accountNonExpired) {
        this.accountNonExpired = accountNonExpired;
    }

    public Short getCredentialsNonExpired() {
        return credentialsNonExpired;
    }

    public void setCredentialsNonExpired(Short credentialsNonExpired) {
        this.credentialsNonExpired = credentialsNonExpired;
    }

    public Short getAccountNonLocked() {
        return accountNonLocked;
    }

    public void setAccountNonLocked(Short accountNonLocked) {
        this.accountNonLocked = accountNonLocked;
    }

    public String getOrganUuid() {
        return organUuid;
    }

    public void setOrganUuid(String organUuid) {
        this.organUuid = organUuid;
    }

    public String getNiceName() {
        return niceName;
    }

    public void setNiceName(String niceName) {
        this.niceName = niceName;
    }

    public Short getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(Short isAdmin) {
        this.isAdmin = isAdmin;
    }

    public Short getMaximumsessions() {
        return maximumsessions;
    }

    public void setMaximumsessions(Short maximumsessions) {
        this.maximumsessions = maximumsessions;
    }

    public String getRegisterdate() {
        return registerdate;
    }

    public void setRegisterdate(String registerdate) {
        this.registerdate = registerdate;
    }

    public String getLastlogintime() {
        return lastlogintime;
    }

    public void setLastlogintime(String lastlogintime) {
        this.lastlogintime = lastlogintime;
    }

    public String getPwdque() {
        return pwdque;
    }

    public void setPwdque(String pwdque) {
        this.pwdque = pwdque;
    }

    public String getPwdans() {
        return pwdans;
    }

    public void setPwdans(String pwdans) {
        this.pwdans = pwdans;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getDepid() {
        return depid;
    }

    public void setDepid(String depid) {
        this.depid = depid;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getModtime() {
        return modtime;
    }

    public void setModtime(String modtime) {
        this.modtime = modtime;
    }

    public String getModifierid() {
        return modifierid;
    }

    public void setModifierid(String modifierid) {
        this.modifierid = modifierid;
    }

    public Short getIsSum() {
        return isSum;
    }

    public void setIsSum(Short isSum) {
        this.isSum = isSum;
    }
}