package com.middleman.middle_man.model;

import java.util.ArrayList;
import java.util.Collection;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import java.util.*;

import lombok.Data;

@Entity
@Data
@JsonIgnoreProperties(ignoreUnknown = true)
public class User implements UserDetails {

    @Id
    private String id;
    private Gender gender;


    private String username;
    private String password;
    private boolean enabled = true;
    private Date created_Date = new Date(System.currentTimeMillis());

    
    private String roles ;

    private String firstName;
    private String lastName;
    private String email;


    public enum Gender {
        MALE, FEMALE; 
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        Collection<SimpleGrantedAuthority> authorities = new ArrayList<>();
      
            authorities.add(new SimpleGrantedAuthority(this.roles));
        
        return authorities;
    }

    @Override
    public boolean isAccountNonExpired() {
        return this.enabled;
    }

    @Override
    public boolean isAccountNonLocked() {
        return enabled;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return this.enabled;
    }

    @Override
    public boolean isEnabled() {
        return this.enabled;
    }
   
}
