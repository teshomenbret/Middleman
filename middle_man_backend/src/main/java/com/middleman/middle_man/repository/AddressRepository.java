package com.middleman.middle_man.repository;

import com.middleman.middle_man.model.Address;

import org.springframework.data.jpa.repository.JpaRepository;

public interface AddressRepository extends JpaRepository<Address,Long>{
    
}
