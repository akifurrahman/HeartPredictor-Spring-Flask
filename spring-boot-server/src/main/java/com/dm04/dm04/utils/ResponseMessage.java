package com.dm04.dm04.utils;

import org.springframework.stereotype.Component;

import com.dm04.dm04.model.UserModel;



@Component
public class ResponseMessage {

    String message;
    UserModel userModel;

    public String getMessage() {
        return message;
    }
    public void setMessage(String message) {
        this.message = message;
    }
    public UserModel getUserModel() {
        return userModel;
    }
    public void setUserModel(UserModel userModel) {
        this.userModel = userModel;
    }

    
    
}
