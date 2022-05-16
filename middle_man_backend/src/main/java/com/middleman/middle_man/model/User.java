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
import javax.persistence.OneToMany;

import lombok.Data;

@Entity
@Data
public class User implements UserDetails {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    private Gender gender;


    private String username;
    private String password;
    private boolean enabled = true;

    @OneToMany(fetch = FetchType.EAGER)
    private Collection<Role> roles = new ArrayList<>();

    // TODO 
    // why not we list the fild in the Fullname here ? 
    @Embedded
    private Fullname fullName;

    @Embedded
    private  Address address;


    public enum Gender {
        MALE, FEMALE; 
    }

    public void addRole(Role role) {
        this.roles.add(role);
    }

    // TODO
    // replathe the for loop with JAVA STREAM API
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        Collection<SimpleGrantedAuthority> authorities = new ArrayList<>();
        for(Role role :this.roles){
            authorities.add(new SimpleGrantedAuthority(role.getName()));
        }
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
