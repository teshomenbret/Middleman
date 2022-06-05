package com.middleman.middle_man;

import com.middleman.middle_man.model.Company;

import com.middleman.middle_man.model.User;
import com.middleman.middle_man.repository.CompanyRepository;

import com.middleman.middle_man.service.UserService;

import java.util.Arrays;

import org.apache.catalina.filters.CorsFilter;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;

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

	 @Bean
	 public CorsFilter corsFilter() {
		 UrlBasedCorsConfigurationSource source =
			 new UrlBasedCorsConfigurationSource();
		 CorsConfiguration config = new CorsConfiguration();
		 config.setAllowCredentials(true);
		 config.addAllowedOrigin("*");
		 config.addAllowedHeader("*");
		 config.addAllowedMethod("*");
		 source.registerCorsConfiguration("/**", config);
		 return new CorsFilter();
	 }
	
    // TODO
	// this is for testing purpose we will upgrade this
	 @Bean
	public CommandLineRunner dataLoader(CompanyRepository companyRepository,UserService userService){
		return args -> { 
			
				User user = new User();
				user.setId("a");
				user.setUsername("teshome");
				user.setPassword("teshome");
				user.setRoles("ADMIN");
				userService.save(user);

				User user2 = new User();
				user2.setId("b");
				user2.setUsername("bereket");
				user2.setPassword("1234");
				user2.setRoles("ADMIN");
				userService.save(user2);

				User user3 = new User();
				user3.setId("c");
				user3.setUsername("Surafel");
				user3.setPassword("1928");
				user3.setRoles("ADMIN");
				userService.save(user3);

				
				User user4 = new User();
				user4.setId("c");
				user4.setUsername("Mania");
				user4.setPassword("1928");
				user4.setRoles("ADMIN");
				userService.save(user4);

				User user5 = new User();
				user5.setId("c");
				user5.setUsername("petros");
				user5.setPassword("1928");
				user5.setRoles("ADMIN");
				userService.save(user5);
			
		};
	}


}
