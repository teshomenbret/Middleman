package com.middleman.middle_man.model;

import javax.persistence.Embeddable;

import lombok.Data;

@Embeddable
@Data
public class Fullname {

    private String firstName;
    private String middleName;
    private String lastName;
    
}
