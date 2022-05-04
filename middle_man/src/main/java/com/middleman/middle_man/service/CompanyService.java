package com.middleman.middle_man.service;
import java.util.*;
import com.middleman.middle_man.repository.CompanyRepository;
import com.middleman.middle_man.model.Company;
import org.springframework.beans.factory.annotation.Autowired;

public class CompanyService {
    @Autowired
    private CompanyRepository companyRepository;

    public List<Company>  findAll(){
       return  companyRepository.findAll();
    }

    public Company save(Company company){
       return companyRepository.save(company);
    }

    public Company findByComName(String compName){
         
            return companyRepository.getByCompName(compName);   
        
    }
    public void deleteById(String id){
     companyRepository.deleteById(id);
}

    
}
