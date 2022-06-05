package com.middleman.middle_man.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

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
public class Address {
    @Id
    private String id;
    private String phoneNumber;
    private String email;
    private Region region;
    public static enum Region {
        Afar,Amhara,Benishangul_Gumuz,Gambela,Harari, Oromia,
        Sidama, Somalia, Southern_Nations_Nationalities_Peoples,Tigray,
    }
    private String city;
    private String streetName;
    private String branchName;

}
