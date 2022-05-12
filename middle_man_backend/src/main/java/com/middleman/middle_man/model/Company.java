package com.middleman.middle_man.model;
import java.util.*;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import javax.persistence.OneToMany;


import com.fasterxml.jackson.annotation.JsonIgnoreType;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
 
@JsonIgnoreType
@Data
@AllArgsConstructor
@NoArgsConstructor
 
@Entity
public class Company   {
    @Id
    @GeneratedValue
    @Column(name="comp_id")
    private long id;
    private String compName;
    private String summary;
    
    
   
    @OneToMany(mappedBy = "company",cascade = CascadeType.ALL)
    private List<Item> items;
    // Description description;
    // Address address;
    // @OneToOne(fetch = FetchType.LAZY)

    @Embedded
    private Address companyAddress;
    
    

}
