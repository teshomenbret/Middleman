package com.middleman.middle_man;

import com.middleman.middle_man.model.Company;
import com.middleman.middle_man.model.Role;
import com.middleman.middle_man.model.User;
import com.middleman.middle_man.repository.CompanyRepository;
import com.middleman.middle_man.repository.RoleRepository;
import com.middleman.middle_man.service.UserService;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@SpringBootApplication
public class MiddleManApplication {

	public static void main(String[] args) {
		SpringApplication.run(MiddleManApplication.class, args);
	}
	
	 //bean for the password encoder
	 @Bean
	 public PasswordEncoder passwordEncoder() {
		 return new BCryptPasswordEncoder();
	 }
	
    // TODO
	// this is for testing purpose we will upgrade this
	 @Bean
	public CommandLineRunner dataLoader(CompanyRepository companyRepository,UserService userService, RoleRepository roleRepository) {
		return args -> { 
			 	Company company = new Company();
				company.setName("mycompany");
				company.setSummary("yemin abatu summary");
				companyRepository.save(company);

				Company company1 = new Company();
				company1.setName("mycompany");
				company1.setSummary("yemin abatu summary");
				companyRepository.save(company1);

				Company company2 = new Company();
				company2.setName("mycompany");
				company2.setSummary("yemin abatu summary");
				companyRepository.save(company2);

				Company company3 = new Company();
				company3.setName("mycompany");
				company3.setSummary("yemin abatu summary");
				companyRepository.save(company2);
				
				Role roleUser = new Role();
				roleUser.setName("USER");
				Role roleCompany = new Role();
				roleCompany.setName("CAMPANY");
				Role roleAdmin = new Role();
				roleAdmin.setName("ADMIN");

				roleRepository.save(roleUser);
				roleRepository.save(roleCompany);
				roleRepository.save(roleAdmin);
				

				User user = new User();
				user.setFullName(null);
				user.setUsername("teshome");
				user.setPassword("teshome");
				user.addRole(roleUser);

				User user2 = new User();
				user2.setFullName(null);
				user2.setUsername("1234");
				user2.setPassword("1234");
				user2.addRole(roleCompany);

				User user3 = new User();
				user3.setFullName(null);
				user3.setUsername("1928");
				user3.setPassword("1928");
				user3.addRole(roleAdmin);
				userService.save(user);
				userService.save(user2);
				userService.save(user3);
			
		};
	}


}
