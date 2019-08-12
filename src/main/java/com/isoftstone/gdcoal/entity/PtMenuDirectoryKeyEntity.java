package com.isoftstone.gdcoal.entity;


import com.isoftstone.gdcoal.framework.entity.BaseEntity;

public class PtMenuDirectoryKeyEntity  extends BaseEntity {
    private String id;

    private String locale;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getLocale() {
        return locale;
    }

    public void setLocale(String locale) {
        this.locale = locale;
    }
}