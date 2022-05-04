package com.middleman.middle_man.model;
 
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import lombok.Data;

@Entity
@Data
public class Company   {
    @Id
    @GeneratedValue
    private String id;
    private String compName;
    private String summary;
    // Description description;
    // Address address;

}
