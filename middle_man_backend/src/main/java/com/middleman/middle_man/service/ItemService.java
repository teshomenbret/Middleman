package com.middleman.middle_man.service;

import java.util.*;
import com.middleman.middle_man.model.Item;
import com.middleman.middle_man.repository.ItemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class ItemService {

    @Autowired
    private ItemRepository itemRepository;

     public List<Item> getItems(){
       return  (List<Item>)itemRepository.findAll();
    }

    public Item save(Item item){
      log.info("Saving new item {} to the database", item.toString());
       return itemRepository.save(item);
    }

    public Item findByName(String name){
         return itemRepository.getByName(name);      
    }
    public void deleteById(String id){
      log.info("deleting item {} to the database", id);
        itemRepository.deleteById(id);
}

   public Optional<Item> findById(String id) {
      return itemRepository.findById(id);
   }
    
}






