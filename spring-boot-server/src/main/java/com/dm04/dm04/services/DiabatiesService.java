package com.dm04.dm04.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dm04.dm04.Repository.DiabatiesRepository;
import com.dm04.dm04.model.DiabatiesModel;

@Service
public class DiabatiesService {


    @Autowired
    DiabatiesRepository diabatiesRepository;


    public DiabatiesModel insertDiabeties(DiabatiesModel dm){

        DiabatiesModel dm1=diabatiesRepository.save(dm);

        return dm1;
    }

    public List<DiabatiesModel> getDetailsOfUser(){

      return diabatiesRepository.findAll();     

    }

    public List<DiabatiesModel> getAllResultsOfOneUser(int id){

      return diabatiesRepository.findByUserid(id);

    }

    public DiabatiesModel getOneDiabatiesModel(int id){
      return diabatiesRepository.findById(id).get();
    }
    
}
