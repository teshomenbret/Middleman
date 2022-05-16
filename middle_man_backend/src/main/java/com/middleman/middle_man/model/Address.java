package com.middleman.middle_man.model;

import javax.persistence.Embeddable;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
 
// @JsonIgnoreType
@Data
@AllArgsConstructor
@NoArgsConstructor
@Embeddable
public class Address {
    
    private String phoneNumber;
    private String email;
    private String streetName;
    private String mapLink;
   

}

