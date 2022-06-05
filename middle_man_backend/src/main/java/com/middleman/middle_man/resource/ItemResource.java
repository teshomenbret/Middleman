package com.middleman.middle_man.resource;
import java.util.*;
import com.middleman.middle_man.service.ItemService;
import com.middleman.middle_man.model.Item;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(origins ="*")
@RequestMapping("/api") //TODO we will write sth (api verstion..)
public class ItemResource {
    @Autowired
    private ItemService itemService;
 

    @GetMapping("/items")
    public List<Item> findAllItem(){
       return itemService.getItems();
    }

    @GetMapping("/items/{id}")
    public Item getItem(@PathVariable String id){
        Optional<Item> item = itemService.findById(id);
        if(item.isPresent()){
            return item.get();
        }
        return null;
    }

    @PostMapping("/items")
    public Item createItem(@RequestBody Item item){
        return itemService.save(item);

    }

   @PutMapping("/items")
    public Item updateItem(@RequestBody Item item){
        return itemService.save(item);

    }

    @DeleteMapping("/items/{id}")
    public void deleteItem(@PathVariable String id){
        itemService.deleteById(id);
    }
  

   }
    

