package com.middleman.middle_man.repository;

import com.middleman.middle_man.model.Role;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleRepository extends CrudRepository<Role,Long>{

    Role findByname(String name);
    
}
