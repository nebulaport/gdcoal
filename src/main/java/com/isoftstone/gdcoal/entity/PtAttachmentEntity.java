package com.isoftstone.gdcoal.entity;



import java.util.Date;

import com.isoftstone.gdcoal.framework.entity.BaseEntity;

public class PtAttachmentEntity extends BaseEntity {
    private String id;

    private String attachmentName;

    private Date uploadDate;

    private String uploadIp;

    private Integer attachmentSize;

    private String attachmentUrl;

    private String attachmentType;

    private String belongid;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getAttachmentName() {
        return attachmentName;
    }

    public void setAttachmentName(String attachmentName) {
        this.attachmentName = attachmentName;
    }

    public Date getUploadDate() {
        return uploadDate;
    }

    public void setUploadDate(Date uploadDate) {
        this.uploadDate = uploadDate;
    }

    public String getUploadIp() {
        return uploadIp;
    }

    public void setUploadIp(String uploadIp) {
        this.uploadIp = uploadIp;
    }

    public Integer getAttachmentSize() {
        return attachmentSize;
    }

    public void setAttachmentSize(Integer attachmentSize) {
        this.attachmentSize = attachmentSize;
    }

    public String getAttachmentUrl() {
        return attachmentUrl;
    }

    public void setAttachmentUrl(String attachmentUrl) {
        this.attachmentUrl = attachmentUrl;
    }

    public String getAttachmentType() {
        return attachmentType;
    }

    public void setAttachmentType(String attachmentType) {
        this.attachmentType = attachmentType;
    }

    public String getBelongid() {
        return belongid;
    }

    public void setBelongid(String belongid) {
        this.belongid = belongid;
    }
}