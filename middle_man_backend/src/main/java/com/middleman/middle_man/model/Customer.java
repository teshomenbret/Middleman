package com.middleman.middle_man.model;

import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class Customer {

    @Id
    @GeneratedValue
    private long customerId;
    private Gender gender;

    @Embedded
    private Fullname fullName;

    @Embedded
    private Address customerAddress;


    public enum Gender {
        Male, Female; 
    }
   
}
