package com.dm04.dm04.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dm04.dm04.Repository.UserRepsitory;
import com.dm04.dm04.model.UserModel;
import com.dm04.dm04.utils.ResponseMessage;

@Service
public class UserService {

    @Autowired
    UserRepsitory userRepsitory;

    public ResponseMessage userRegister(UserModel um){

        ResponseMessage responseMessag=new ResponseMessage();
        UserModel usermodel=userRepsitory.getByEmailId(um.getEmailId());

        if(usermodel!=null){
            responseMessag.setMessage("email");
               
        }else if(usermodel==null){
             um=userRepsitory.save(um);
             responseMessag.setMessage("success");
             responseMessag.setUserModel(usermodel);
        }else{
           
            responseMessag.setMessage("failed");
            
        }
        return responseMessag;


    }

    public ResponseMessage userLogin(String emailid, String password) {
        
        ResponseMessage responseMessage=new ResponseMessage();
        UserModel userModel=userRepsitory.findByEmailIdAndPassword(emailid,password);
        if(userModel==null){
           responseMessage.setMessage("E-Mail ID or Password Incorrect");
        }else{
            responseMessage.setMessage("success");
            responseMessage.setUserModel(userModel);
        }
        return responseMessage;
    }

    public ResponseMessage getProfile(int userid) {
        
        UserModel um=userRepsitory.findById(userid).get();
        ResponseMessage responseMessage=new ResponseMessage();
        responseMessage.setUserModel(um);
        responseMessage.setMessage("success");

        return responseMessage;
    }

}
