package com.middleman.middle_man.model;

import java.util.List;
import java.util.Date;

import javax.persistence.Entity;
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
public class Item {
    @Id
    private String id;
     private String name;
     private String price;
     private String quantity;
     private String photo;
     private Date created_Date = new Date(System.currentTimeMillis());
     
    // TODO  decide about this filed 
    private Type type;

    public static enum Type {
        CONSTRUCTION,ELECTRONICS,HOUSING, OTHER
    }
 
    private String  companyId;

    
}
