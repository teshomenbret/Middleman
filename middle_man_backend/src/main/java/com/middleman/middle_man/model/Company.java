package com.middleman.middle_man.model;

import java.util.*;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonIgnoreType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
 
@JsonIgnoreType
@Data
@AllArgsConstructor
@NoArgsConstructor
 
@Entity
@JsonIgnoreProperties(ignoreUnknown = true)
public class Company   {
    @Id
    private String id;
    private String name;
    private String logo;
    private Date created_Date = new Date(System.currentTimeMillis());
    private String description;

    @OneToMany(cascade = CascadeType.ALL)
    private List<Address> addresses;

    

}
