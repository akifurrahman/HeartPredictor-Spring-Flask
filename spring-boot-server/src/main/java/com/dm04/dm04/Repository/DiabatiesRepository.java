package com.dm04.dm04.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.dm04.dm04.model.DiabatiesModel;

@Repository
public interface DiabatiesRepository  extends JpaRepository<DiabatiesModel,Integer>{

    List<DiabatiesModel> findByUserid(int userId);

    
}
