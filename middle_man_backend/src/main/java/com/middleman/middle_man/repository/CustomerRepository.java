package com.middleman.middle_man.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.middleman.middle_man.model.Customer;

@Repository
public interface CustomerRepository extends CrudRepository<Customer,Long>{
    
}
