package com.middleman.middle_man.service;

import com.middleman.middle_man.model.Address;
import com.middleman.middle_man.repository.AddressRepository;

import org.springframework.beans.factory.annotation.Autowired;

import lombok.extern.slf4j.Slf4j;
@Slf4j

public class AddressService {

    @Autowired
    private AddressRepository addressRepository;
    public Address save(Address address){
      log.info("Saving new address{} to the database", address.toString());
       return addressRepository.save(address);
    }


}
