package com.dm04.dm04.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dm04.dm04.config.Configuration;
import com.dm04.dm04.model.DiabatiesModel;
import com.dm04.dm04.services.DiabatiesService;
import com.dm04.dm04.utils.ResponseMessageForFile;

@Controller

public class DiabatiesController {

    @Autowired
    DiabatiesService diabatiesService;

    @PostMapping("/insertRecords")
    public String insertRecords(
        @RequestParam("age") String age,
        @RequestParam("sex") String sex,
        @RequestParam("cp") String cp,
        @RequestParam("trestbps") String trestbps,
        @RequestParam("chol") String chol,
        @RequestParam("fbs") String fbs,
        @RequestParam("restecg") String restecg,
        @RequestParam("thalach") String thalach,
        @RequestParam("exang") String exang,
        @RequestParam("oldpeak") String oldpeak,
        @RequestParam("slope") String slope,
        @RequestParam("ca") String ca,
        @RequestParam("thal") String thal,        
        @RequestParam("userid") String userid,
    Model model
    ){

        DiabatiesModel dm=new DiabatiesModel();
        dm.setAge(Integer.parseInt(age));
        dm.setSex(Integer.parseInt(sex));
        dm.setCp(Integer.parseInt(cp));
        dm.setTrestbps(Integer.parseInt(trestbps));
        dm.setChol(Integer.parseInt(chol));
        dm.setFbs(Integer.parseInt(fbs));
        dm.setRestecg(Integer.parseInt(restecg));
        dm.setThalach(Integer.parseInt(thalach));
        dm.setExang(Integer.parseInt(exang));
        dm.setOldpeak(Integer.parseInt(oldpeak));
        dm.setSlope(Integer.parseInt(slope));
        dm.setCa(Integer.parseInt(ca));
        dm.setThal(Integer.parseInt(thal));
        dm.setUserid(Integer.parseInt(userid));

        DiabatiesModel dm2=diabatiesService.insertDiabeties(dm);
        if(dm2==null){

            model.addAttribute("msg", "Data not inserted");
            model.addAttribute("upload", "upload");
            return "index";

        }else{
            model.addAttribute("msg", "Data inserted");
            model.addAttribute("upload", "upload");
            return "index";
            
        }
       

    }

    @GetMapping("/view1/{userId}")
public String getFiles(@PathVariable String userId,Model model, HttpSession session){
  
   List<DiabatiesModel> dm= diabatiesService.getAllResultsOfOneUser(Integer.parseInt(userId));
   model.addAttribute("view", "view");
   model.addAttribute("results", dm);

    return "index";
}
    
}
