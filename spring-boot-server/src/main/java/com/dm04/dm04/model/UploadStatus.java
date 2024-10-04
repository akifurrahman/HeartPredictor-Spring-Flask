package com.dm04.dm04.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class UploadStatus {

    @Id
    @GeneratedValue
    int id;
    int userId;
    String uploadDateAndTime;
    String fileType;
    String Errors;

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public int getUserId() {
        return userId;
    }
    public void setUserId(int userId) {
        this.userId = userId;
    }
    public String getUploadDateAndTime() {
        return uploadDateAndTime;
    }
    public void setUploadDateAndTime(String uploadDateAndTime) {
        this.uploadDateAndTime = uploadDateAndTime;
    }
    public String getFileType() {
        return fileType;
    }
    public void setFileType(String fileType) {
        this.fileType = fileType;
    }
    public String getErrors() {
        return Errors;
    }
    public void setErrors(String errors) {
        Errors = errors;
    }

    
    
}
