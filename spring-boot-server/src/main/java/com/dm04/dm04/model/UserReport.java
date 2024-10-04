package com.dm04.dm04.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class UserReport {

    @Id
    @GeneratedValue
    int id;
    int userId;
    String loginDateAndTime;
    String  logoutDateAndTime;
    String loginStatus;

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
    public String getLoginDateAndTime() {
        return loginDateAndTime;
    }
    public void setLoginDateAndTime(String loginDateAndTime) {
        this.loginDateAndTime = loginDateAndTime;
    }
    public String getLogoutDateAndTime() {
        return logoutDateAndTime;
    }
    public void setLogoutDateAndTime(String logoutDateAndTime) {
        this.logoutDateAndTime = logoutDateAndTime;
    }
    public String getLoginStatus() {
        return loginStatus;
    }
    public void setLoginStatus(String loginStatus) {
        this.loginStatus = loginStatus;
    }


    
    
    
}
