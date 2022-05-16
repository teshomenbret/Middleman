package com.middleman.middle_man.service;

import java.util.List;
import java.util.Optional;
import com.middleman.middle_man.model.User;
import com.middleman.middle_man.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserService implements UserDetailsService  {
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private  PasswordEncoder passwordEncoder;
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
            User user = userRepository.findByUsername(username);
            if (user != null)
                return user;
            throw new UsernameNotFoundException("User '" + username + "' not found");
        };

    public List<User> getUsers(){
        return (List<User>) userRepository.findAll();
    }

    public Optional<User> getUser(Long id){
        return userRepository.findById(id);
    }

    public User save(User user){
        user.setPassword(passwordEncoder.encode(user.getPassword()));
         return userRepository.save(user);
      }

    public void deleteById(Long id){
        userRepository.deleteById(id);
   }
    
    
}
