package com.middleman.middle_man.service;
  

import com.middleman.middle_man.model.Address;
import com.middleman.middle_man.repository.AddressRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class AddressService {
    @Autowired
    private AddressRepository addressRepository;

    public void updateAddress(Address address){
        addressRepository.save(address);
        
    }


    
}
