package com.dm04.dm04.config;

import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;


@Component
public class Configuration {
    public static RestTemplate getRestTemplate(){
        return new RestTemplate();
    }
    public static String getIP(){
        return "http://localhost:8081/";
    }
    
}
