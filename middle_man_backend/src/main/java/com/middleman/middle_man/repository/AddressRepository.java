package com.middleman.middle_man.repository;

import com.middleman.middle_man.model.Address;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AddressRepository extends CrudRepository<Address,Long>{
    
}

