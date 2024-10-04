package com.dm04.dm04.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.dm04.dm04.model.UserReport;

@Repository
public interface UserStatusRepository extends JpaRepository<UserReport,Integer> {
    
}
