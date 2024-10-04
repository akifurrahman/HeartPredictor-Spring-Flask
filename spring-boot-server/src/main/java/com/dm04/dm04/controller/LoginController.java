package com.dm04.dm04.controller;

import java.time.LocalDate;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.dm04.dm04.Exceptions.MyException;
import com.dm04.dm04.Repository.UserStatusRepository;
import com.dm04.dm04.config.Configuration;
import com.dm04.dm04.model.UserModel;
import com.dm04.dm04.model.UserReport;
import com.dm04.dm04.services.UserService;
import com.dm04.dm04.utils.Infomation;
import com.dm04.dm04.utils.ResponseMessage;

@Controller
@SessionAttributes({ "um", "ur" })
public class LoginController {

   @Autowired
   UserService userService;

    @Autowired
    UserStatusRepository userStatusRepository;

    @PostMapping("/loginsubmit")
    public String userLogin(
            @RequestParam("emailid") String emailid,
            @RequestParam("password") String password, Model model, HttpSession session, HttpServletRequest request)
            throws MyException {

       
        if (emailid.equalsIgnoreCase("admin@gmail.com") && password.equalsIgnoreCase("admin")) {
            model.addAttribute("home", "home");
            return "Admin";
        } else {

            UserModel um = new UserModel();
            um.setEmailId(emailid);
            um.setPassword(password);
            ResponseMessage rm = null;
            try {
                rm = userService.userLogin(emailid,password);
            } catch (Exception e) {
                throw new MyException("your server is not reachable");
            }
            if (rm.getMessage().equalsIgnoreCase("success")) {
                um = rm.getUserModel();

                UserReport ur = new UserReport();
                ur.setUserId(um.getUserId());
                ur.setLoginDateAndTime(LocalDate.now().toString());
                ur.setLoginStatus("1");
                ur = userStatusRepository.save(ur);
                model.addAttribute("suid", ur.getId());
                model.addAttribute("um", um);
                model.addAttribute("profile", null);
                return "index";
            } else {
                String info = Infomation.getErrorMessage("Email-ID or Password Incorrect");
                model.addAttribute("info", info);
                return "login";
            }

        }

    }

    @GetMapping("/profile/{userid}")
    public String checkProfile(@PathVariable String userid, Model model) {

        ResponseMessage rm=null;
        try{
       rm = userService.getProfile(Integer.parseInt(userid));

                if (rm.getMessage().equalsIgnoreCase("success")) {
                    model.addAttribute("um", rm.getUserModel());
                    model.addAttribute("profile", "profile");
                    return "index";
                } else {
                    model.addAttribute("error", "Error Occured ");
                    model.addAttribute("profile", "profile");
                    return "index";
                }
        }catch(Exception e){
            e.printStackTrace();
        }
        return "index";

      

    }

    @GetMapping("/logout")
    public String Logout() {
        return "login";
    }

}
