package com.middleman.middle_man.resource;

import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.middleman.middle_man.model.User;
import com.middleman.middle_man.repository.AuthRequest;
import com.middleman.middle_man.security.JWTUtil;
import lombok.RequiredArgsConstructor;


@RestController
@RequestMapping(path = "api/")
@RequiredArgsConstructor
public class AuthApi {
  private final AuthenticationManager authenticationManager;
  private final JWTUtil jwtUtil;

  @PostMapping("login")
  public ResponseEntity login(@RequestBody AuthRequest request) {
    try {
      Authentication authentication = authenticationManager
        .authenticate(new UsernamePasswordAuthenticationToken(request.getUsername(), request.getPassword()));

      User user = (User) authentication.getPrincipal();
      String token =  jwtUtil.generateAccessToken(user);

      return ResponseEntity.ok()
        .header(HttpHeaders.AUTHORIZATION, token)
        .body(token);
    } catch (BadCredentialsException ex) {
      return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build();
    }
  }

}