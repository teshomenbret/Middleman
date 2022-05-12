package com.middleman.middle_man.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
 
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnoreType;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
 
@JsonIgnoreType
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Address {
    @Id
    @GeneratedValue
    private Long id;
    private String phoneNumber;
    private String email;
    private String location;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="comp_id")
    private Company company;
    
   



}

