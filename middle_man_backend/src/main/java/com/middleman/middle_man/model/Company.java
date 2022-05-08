package com.middleman.middle_man.model;
import java.util.*;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import lombok.Data;

@Entity
@Data
public class Company   {
    @Id
    @GeneratedValue
    @Column(name="comp_id")
    private long id;
    private String compName;
    private String summary;

    @OneToMany(mappedBy = "company",cascade = CascadeType.ALL)
    private List<Item> items;
    // Description description;
    // Address address;
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="address_id")
    private Address address;

}
