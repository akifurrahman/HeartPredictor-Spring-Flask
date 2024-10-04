package com.dm04.dm04.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.springframework.web.bind.annotation.RequestParam;


@Entity
public class DiabatiesModel {


    @Id
    @GeneratedValue
    private int id;

    private int age, sex, cp, trestbps, chol, fbs, restecg, thalach, exang, oldpeak, slope, ca, thal, userid;


    private String result;

    public int getAge() {
        return age;
    }
    
    public void setAge(int age) {
        this.age = age;
    }
    
    public int getSex() {
        return sex;
    }
    
    public void setSex(int sex) {
        this.sex = sex;
    }
    
    public int getCp() {
        return cp;
    }
    
    public void setCp(int cp) {
        this.cp = cp;
    }
    
    public int getTrestbps() {
        return trestbps;
    }
    
    public void setTrestbps(int trestbps) {
        this.trestbps = trestbps;
    }
    
    public int getChol() {
        return chol;
    }
    
    public void setChol(int chol) {
        this.chol = chol;
    }
    
    public int getFbs() {
        return fbs;
    }
    
    public void setFbs(int fbs) {
        this.fbs = fbs;
    }
    
    public int getRestecg() {
        return restecg;
    }
    
    public void setRestecg(int restecg) {
        this.restecg = restecg;
    }
    
    public int getThalach() {
        return thalach;
    }
    
    public void setThalach(int thalach) {
        this.thalach = thalach;
    }
    
    public int getExang() {
        return exang;
    }
    
    public void setExang(int exang) {
        this.exang = exang;
    }
    
    public int getOldpeak() {
        return oldpeak;
    }
    
    public void setOldpeak(int oldpeak) {
        this.oldpeak = oldpeak;
    }
    
    public int getSlope() {
        return slope;
    }
    
    public void setSlope(int slope) {
        this.slope = slope;
    }
    
    public int getCa() {
        return ca;
    }
    
    public void setCa(int ca) {
        this.ca = ca;
    }
    
    public int getThal() {
        return thal;
    }
    
    public void setThal(int thal) {
        this.thal = thal;
    }
    

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


}
