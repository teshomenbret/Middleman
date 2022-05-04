package com.middleman.middle_man.model;
import java.util.*;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import lombok.Data;

@Entity
@Data
public class Company   {
    @Id
    @GeneratedValue
    @Column(name="comp_id")
    private String id;
    private String compName;
    private String summary;

    @OneToMany(mappedBy = "company",cascade = CascadeType.ALL)
    private List<Item> items;
    // Description description;
    // Address address;

}
