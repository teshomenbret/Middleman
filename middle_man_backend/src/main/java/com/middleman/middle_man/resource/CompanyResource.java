package com.middleman.middle_man.resource;
import java.util.*;
import com.middleman.middle_man.service.CompanyService;
import com.middleman.middle_man.model.Company;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(origins ="*")
@RequestMapping("/api") //TODO we will write sth (api verstion..)
public class CompanyResource {
    @Autowired
    private CompanyService companyService;
 

    @GetMapping("/companies")
    public List<Company> findAllCompany(){
       return companyService.getCompanies();
    }

    @GetMapping("/companies/{id}")
    public Company getCompany(@PathVariable Long id){
        Optional<Company> company = companyService.findById(id);
        if(company.isPresent()){
            return company.get();
        }
        return null;
    }

    @PostMapping("/companies")
    public Company createCompany(@RequestBody Company company){
        return companyService.save(company);

    }

    // TODO 
    // tink about its implementation(better)
   @PutMapping("/companies")
       public Company updateComapny(@RequestBody Company company){
           return companyService.save(company);
       }

    @DeleteMapping("/companies/{id}")
    public void deleteCompany(@PathVariable Long id){
        companyService.deleteById(id);
    }
  

   }
    

