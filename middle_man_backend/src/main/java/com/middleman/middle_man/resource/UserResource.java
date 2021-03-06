package com.middleman.middle_man.resource;

import java.util.*;
import com.middleman.middle_man.service.UserService;
// import com.middleman.middle_man.model.Role;
import com.middleman.middle_man.model.User;
// import com.middleman.middle_man.repository.RoleRepository;
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
public class UserResource {
    @Autowired
    private UserService userService;
 

    @GetMapping("/users")
    public List<User> findAllUsers(){
       return userService.getUsers();
    }

    @GetMapping("/users/{id}")
    public User getUser(@PathVariable String id){
        Optional<User> user = userService.getUser(id);
        if(user.isPresent()){
            return user.get();
        }
        return null;
    }

    // TODO 
    // change the for loop by java stream api
    @PostMapping("/users")
    public User createUser(@RequestBody User user){
        // Collection<String> roles = user.getRoles();
        // for(Role role :roles){
        //     roleRepository.save(role);
        // }
        return userService.save(user);

    }

    @PostMapping("/users/role")
    public User updateUserRole(@RequestBody User user){
        Optional<User> use = userService.getUser(user.getId());
        if(use.isPresent()){
            User us = use.get();
            us.setRoles(user.getRoles());
            return userService.save(us);
        }

        return null;
        
       

    }

    // TODO 
    // tink about its implementation(better)
   @PutMapping("/users")
       public User updateUser(@RequestBody User user){
           return userService.save(user);
       }

    @DeleteMapping("/users/{id}")
    public void deleteUser(@PathVariable String id){
        userService.deleteById(id);
    }
  

   }
    

