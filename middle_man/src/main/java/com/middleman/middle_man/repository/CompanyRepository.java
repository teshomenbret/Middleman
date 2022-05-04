package com.middleman.middle_man.repository;

import com.middleman.middle_man.model.Company;

import org.springframework.data.jpa.repository.JpaRepository;


public interface CompanyRepository extends JpaRepository<Company,String> {
public boolean existsByCompName(String compName);
public Company getByCompName(String compName);
    
}
