package com.middleman.middle_man.service;

import java.util.*;
import com.middleman.middle_man.repository.CompanyRepository;
import com.middleman.middle_man.model.Company;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Transactional
@Slf4j
public class CompanyService {

   @Autowired
    private CompanyRepository companyRepository;

    public List<Company> getCompanies(){
       log.info("");
       return  (List<Company>)companyRepository.findAll();
    }

    public Company save(Company company){
      log.info("Saving new company {} to the databas", company.toString());
       return companyRepository.save(company);
    }

    public Company findByName(String name){
         return companyRepository.getByName(name);      
    }
    public void deleteById(Long id){
     companyRepository.deleteById(id);
}

   public Optional<Company> findById(Long id) {
      return companyRepository.findById(id);
   }

    
}
