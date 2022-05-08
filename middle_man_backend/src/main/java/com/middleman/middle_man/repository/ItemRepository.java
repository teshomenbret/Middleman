package com.middleman.middle_man.repository;

import com.middleman.middle_man.model.Item;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
@Repository
public interface ItemRepository extends JpaRepository<Item,Long> {
    
}
