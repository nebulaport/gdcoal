package com.isoftstone.gdcoal.entity;

import com.isoftstone.gdcoal.framework.entity.BaseEntity;

public class TAccountEntity extends BaseEntity {
    private String accountId;

    private String accountCode;

    private Integer totalAccount;

    private Integer balanceAccount;

    private Integer freezeAccount;

    private String organCode;

    private Integer membershipFees;

    private Integer bidAccount;

    private Integer performanceAccount;

    public String getAccountId() {
        return accountId;
    }

    public void setAccountId(String accountId) {
        this.accountId = accountId;
    }

    public String getAccountCode() {
        return accountCode;
    }

    public void setAccountCode(String accountCode) {
        this.accountCode = accountCode;
    }

    public Integer getTotalAccount() {
        return totalAccount;
    }

    public void setTotalAccount(Integer totalAccount) {
        this.totalAccount = totalAccount;
    }

    public Integer getBalanceAccount() {
        return balanceAccount;
    }

    public void setBalanceAccount(Integer balanceAccount) {
        this.balanceAccount = balanceAccount;
    }

    public Integer getFreezeAccount() {
        return freezeAccount;
    }

    public void setFreezeAccount(Integer freezeAccount) {
        this.freezeAccount = freezeAccount;
    }

    public String getOrganCode() {
        return organCode;
    }

    public void setOrganCode(String organCode) {
        this.organCode = organCode;
    }

    public Integer getMembershipFees() {
        return membershipFees;
    }

    public void setMembershipFees(Integer membershipFees) {
        this.membershipFees = membershipFees;
    }

    public Integer getBidAccount() {
        return bidAccount;
    }

    public void setBidAccount(Integer bidAccount) {
        this.bidAccount = bidAccount;
    }

    public Integer getPerformanceAccount() {
        return performanceAccount;
    }

    public void setPerformanceAccount(Integer performanceAccount) {
        this.performanceAccount = performanceAccount;
    }
}