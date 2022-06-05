package com.middleman.middle_man.repository;

import com.middleman.middle_man.model.Company;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CompanyRepository extends CrudRepository<Company,String> {
public boolean existsByName(String name);
public Company getByName(String name);
    
}
