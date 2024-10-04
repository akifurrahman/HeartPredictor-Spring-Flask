package com.dm04.dm04.model;

import java.util.List;


public class AdminResponse {

    private String message;
    private List<UserModel> userModels;
    private List<FileModel> fileModels;
    public String getMessage() {
        return message;
    }
    public void setMessage(String message) {
        this.message = message;
    }
    public List<UserModel> getUserModels() {
        return userModels;
    }
    public void setUserModels(List<UserModel> userModels) {
        this.userModels = userModels;
    }
    public List<FileModel> getFileModels() {
        return fileModels;
    }
    public void setFileModels(List<FileModel> fileModels) {
        this.fileModels = fileModels;
    }

                      
    
    
}
