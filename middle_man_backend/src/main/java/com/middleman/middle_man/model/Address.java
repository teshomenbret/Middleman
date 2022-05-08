package com.middleman.middle_man.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import lombok.Data;
@Entity
@Data
public class Address {
    @Id
    @GeneratedValue
    @Column(name="address_id")
    private long id;
    private String phoneNumber;
    private String email;
    private String location;
    @OneToOne(mappedBy ="address")
    private Company company;
   



}

