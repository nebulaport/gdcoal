package com.isoftstone.gdcoal.entity;

import com.isoftstone.gdcoal.framework.entity.BaseEntity;


import java.util.Date;

public class TFulblacklistAttachmentEntity extends BaseEntity {
    private Long attachmentId;

    private String blackid;

    private String attachmentPath;

    private String attachmentName;

    private String filename;

    private Long downloadCount;

    private String uploaddate;

    public Long getAttachmentId() {
        return attachmentId;
    }

    public void setAttachmentId(Long attachmentId) {
        this.attachmentId = attachmentId;
    }

    public String getBlackid() {
        return blackid;
    }

    public void setBlackid(String blackid) {
        this.blackid = blackid;
    }

    public String getAttachmentPath() {
        return attachmentPath;
    }

    public void setAttachmentPath(String attachmentPath) {
        this.attachmentPath = attachmentPath;
    }

    public String getAttachmentName() {
        return attachmentName;
    }

    public void setAttachmentName(String attachmentName) {
        this.attachmentName = attachmentName;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public Long getDownloadCount() {
        return downloadCount;
    }

    public void setDownloadCount(Long downloadCount) {
        this.downloadCount = downloadCount;
    }

    public String getUploaddate() {
        return uploaddate;
    }

    public void setUploaddate(String uploaddate) {
        this.uploaddate = uploaddate;
    }
}