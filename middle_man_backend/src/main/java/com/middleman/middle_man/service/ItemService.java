package com.middleman.middle_man.service;
import java.util.*;
import com.middleman.middle_man.model.Item;
import com.middleman.middle_man.repository.ItemRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class ItemService {
    @Autowired
    private ItemRepository itemRepository;
    public Item createItem(Item item){
        return itemRepository.save(item);
    }
    public List<Item> getAllItem(){
        return itemRepository.findAll();
    }
    public void updateItem(Item item){
        itemRepository.save(item);
        
    }

    public void  deleteItem(long itemId){
        itemRepository.deleteById(itemId);

    }
    
}
