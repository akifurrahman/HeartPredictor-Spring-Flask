package com.dm04.dm04.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.dm04.dm04.config.Configuration;
import com.dm04.dm04.model.DiabatiesModel;
import com.dm04.dm04.model.SentiModel;
import com.dm04.dm04.model.UserModel;
import com.dm04.dm04.services.UserService;
import com.dm04.dm04.utils.Infomation;
import com.dm04.dm04.utils.ResponseMessage;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class UserController {

    @Autowired
    UserService userService;

    @GetMapping("/login")
    public String loginForm() {
        return "login";
    }
    @GetMapping("/")
    public String test(HttpSession session) {
    
        return "login";
      
    }

    @GetMapping("registerForm")
    public String registerFrom() {
        return "register";
    }

    @PostMapping("/register")
    public String userRegister(
     @RequestParam("name") String userName,
     @RequestParam("mobile")String mobile,
     @RequestParam("emailid")String emailid,
     @RequestParam("password")String password, Model model){

        UserModel um= new UserModel();
        um.setName(userName);um.setMobile(mobile);um.setEmailId(emailid);um.setPassword(password);
        um.setUser_status("active");
        
       /*  ResponseMessage rm=Configuration
        .getRestTemplate()
        .postForObject(Configuration.getIP()+"user/Register", um, ResponseMessage.class);


 */
ResponseMessage rm=userService.userRegister(um);
        if(rm.getMessage().equalsIgnoreCase("success")){
            String info = Infomation.getMessage("Registration Successful");
          model.addAttribute("info", info);
     
        }
        if(rm.getMessage().equalsIgnoreCase("email")){
            String info = Infomation.getErrorMessage("Email ID Exists");
          model.addAttribute("info", info);

        }
        if(rm.getMessage().equalsIgnoreCase("fail")){
            String info = Infomation.getErrorMessage("Failed to Register");
          model.addAttribute("info", info);

        }
        return "register";

    }



    @PostMapping("/checkSenti")
    public String getSentiment(Model model,@RequestParam("text") String text){
      //  System.out.println("in checking result"+id);
       

         ResponseEntity<SentiModel> s= Configuration
                        .getRestTemplate()
                        .getForEntity("http://192.168.1.8:5002/predict?query="+text,SentiModel.class);
        
       if(s.getStatusCodeValue()==200){
    SentiModel sm=s.getBody();

    System.out.println(sm.getText());
    System.out.println(sm.getPos().get(0));

        model.addAttribute("result",s.getBody());
        model.addAttribute("resultsPage", "resultsPage1");
       // model.addAttribute("results", diabatiesService.getDetailsOfUser());
      //  dm.setResult(s.getBody());
       // diabatiesService.insertDiabeties(dm);
        return "index";
       }else{
        model.addAttribute("result","Failed to get Result");
        model.addAttribute("resultsPage", "resultsPage1");
      //  model.addAttribute("results", diabatiesService.getDetailsOfUser());
        return "index";
       }
         

    }

}
