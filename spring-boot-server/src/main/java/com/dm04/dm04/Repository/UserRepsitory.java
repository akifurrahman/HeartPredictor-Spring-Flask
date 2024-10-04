package com.dm04.dm04.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.dm04.dm04.model.UserModel;


@Repository
public interface UserRepsitory extends JpaRepository<UserModel,Integer> {

    UserModel getByEmailId(String emailId);

    UserModel findByEmailIdAndPassword(String emailid, String password);

}
