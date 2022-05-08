package com.middleman.middle_man.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
 
 

import lombok.Data;

@Entity
@Data
public class Item {
     @Id
     @GeneratedValue
     private long   itemId;
     private String itemName;
     private float unitPrice;
     private int quantity;
     
    //  private Type type;


    // public static enum Type {
    //     CONSTRUCTION,ELECTRONICS,HOUSING

    // }
   
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="comp_id")
    private Company company;

    
}
