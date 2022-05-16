package com.middleman.middle_man.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.middleman.middle_man.model.User;

@Repository
public interface UserRepository extends CrudRepository<User,Long>{

    User findByUsername(String username);
    
}
