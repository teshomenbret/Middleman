package com.middleman.middle_man.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.Data;



// TODO 
// think about the relationship of role and user and do sth(if better than this)
@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Role{
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    private String name;

}

