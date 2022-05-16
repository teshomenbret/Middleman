package com.middleman.middle_man.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnoreType;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
 

@JsonIgnoreType
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Item {
     @Id
     @GeneratedValue(strategy = GenerationType.AUTO)
     private long id;
     private String name;
     private float price;
     private int quantity;
     
    // TODO  decide about this filed 
    //  private Type type;
    // public static enum Type {
    //     CONSTRUCTION,ELECTRONICS,HOUSING

    // }
 
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="comp_id")
    private Company company;

    
}
