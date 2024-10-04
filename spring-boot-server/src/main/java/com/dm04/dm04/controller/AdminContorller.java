package com.dm04.dm04.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.dm04.dm04.Exceptions.MyException;
import com.dm04.dm04.Repository.UserRepsitory;
import com.dm04.dm04.config.Configuration;
import com.dm04.dm04.model.AdminResponse;
import com.dm04.dm04.model.DiabatiesModel;
import com.dm04.dm04.model.UserModel;
import com.dm04.dm04.services.DiabatiesService;
import com.dm04.dm04.utils.ResponseMessage;

@Controller
public class AdminContorller {

    @Autowired
    DiabatiesService diabatiesService;

    @Autowired
    UserRepsitory userRepsitory;

    @GetMapping("/adminHome")
    public String adminHome(Model model) throws MyException {
        model.addAttribute("home", "home");
        return "Admin";

    }

    @GetMapping("/users")
    public String usersRecords(Model model) throws MyException {

        /* AdminResponse rm = null;
        try {
            rm = Configuration
                    .getRestTemplate()
                    .getForObject(Configuration.getIP() + "admin/getUsers", AdminResponse.class);
        } catch (Exception e) {
            throw new MyException("your server is not reachable");
        }
 */
List<UserModel> users=userRepsitory.findAll();
        model.addAttribute("userspage", "users");
        model.addAttribute("users", users);

        return "Admin";

    }

    @GetMapping("/resultsPage")
    public String getResultsPage(Model model){
        
        model.addAttribute("resultsPage", "resultsPage");
        model.addAttribute("results", diabatiesService.getDetailsOfUser());
        return "Admin";

    }

    @GetMapping("/checkResult")
    public String getResult(Model model,@RequestParam("uid") int id){
        System.out.println("in checking result"+id);
        DiabatiesModel dm= diabatiesService.getOneDiabatiesModel(id);

         ResponseEntity<String> s= Configuration
                        .getRestTemplate()
                        .postForEntity("http://127.0.0.1:5001/predict1", dm,String.class);
        
       if(s.getStatusCodeValue()==200){
        model.addAttribute("result",s.getBody());
        model.addAttribute("resultsPage", "resultsPage1");
        model.addAttribute("results", diabatiesService.getDetailsOfUser());
        dm.setResult(s.getBody());
        diabatiesService.insertDiabeties(dm);
        return "Admin";
       }else{
        model.addAttribute("result","Failed to get Result");
        model.addAttribute("resultsPage", "resultsPage1");
        model.addAttribute("results", diabatiesService.getDetailsOfUser());
        return "Admin";
       }
         

    }

    @GetMapping("/checkResult1")
    public String getResult1(Model model){
       // DiabatiesModel dm= diabatiesService.getOneDiabatiesModel(id);

       UserModel um=new UserModel();
       um.setEmailId("shyam@gmail.com");
         ResponseEntity<String> s= Configuration
                        .getRestTemplate()
                        .postForEntity("http://127.0.0.1:5001/sample",um, String.class);
        System.out.println(s.getBody());
      return  null;

    }

    @GetMapping("/harmFiles")
    public String harmFiles(Model model) throws MyException {

        AdminResponse rm = null;
        try {
            rm = Configuration
                    .getRestTemplate()
                    .getForObject(Configuration.getIP() + "admin/getHarmFiles", AdminResponse.class);
        } catch (Exception e) {
            throw new MyException("your server is not reachable");
        }

        model.addAttribute("harmFiles","harmFiles");
        model.addAttribute("files", rm.getFileModels());

        return "Admin";

    }

     @GetMapping("/files")
    public String userFiles(Model model) throws MyException {

        AdminResponse rm = null;
        try {
            rm = Configuration
                    .getRestTemplate()
                    .getForObject(Configuration.getIP() + "admin/getFiles", AdminResponse.class);
        } catch (Exception e) {
            throw new MyException("your server is not reachable");
        }

        model.addAttribute("filespage", "filespage");
        model.addAttribute("files", rm.getFileModels());

        return "Admin";

    }

}
