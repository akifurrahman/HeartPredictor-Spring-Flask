package com.dm04.dm04.utils;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

public class SpringSessionUtil {

    public static List<String> getUserId(HttpSession session) {
     
        List<String> user=new ArrayList();
        
        if (session
        .getAttribute("users")==null) {
           user = new ArrayList<>();
        }
        return user;
    }
    
}
