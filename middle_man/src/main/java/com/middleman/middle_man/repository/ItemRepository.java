package com.middleman.middle_man.repository;

import com.middleman.middle_man.model.Item;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ItemRepository extends JpaRepository<Item,Long> {
    
}
