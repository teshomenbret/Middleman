package com.middleman.middle_man.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

@Configuration 
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private  UserDetailsService userDetailsService;
    @Autowired
    private  PasswordEncoder passwordEncoder;

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
      auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder);
    }

    // TODO configer this function  as we progress and deside some stratagey
    @Override
    protected void configure(HttpSecurity http) throws Exception { 
        http.csrf().disable(); // Disabling csrf
        http.authorizeRequests().antMatchers("api/login").permitAll();
        .antMatchers("/api/users/**").hasAnyAuthority("ADMIN");
        http.authorizeRequests().antMatchers("/api/companies/**").hasAnyAuthority("USER","ADMIN","CAMPANY");
        http.authorizeRequests().antMatchers("/api/items/**").hasAnyAuthority("USER","ADMIN","CAMPANY");
        http.authorizeHttpRequests().anyRequest().authenticated();
        http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);
        http.addFilterBefore(new MiddleManAuthorizationFilter(), UsernamePasswordAuthenticationFilter.class);
    }

  @Override
  @Bean
  public AuthenticationManager authenticationManagerBean() throws Exception {
    return super.authenticationManagerBean();
  }

}

