package com.middleman.middle_man.repository;

import com.middleman.middle_man.model.Item;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
@Repository
public interface ItemRepository extends CrudRepository<Item,String> {
    public Item getByName(String name);
    public Item getByCompanyId(String id);
    
}
