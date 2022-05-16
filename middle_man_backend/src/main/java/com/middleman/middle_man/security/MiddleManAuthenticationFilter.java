package com.middleman.middle_man.security;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.middleman.middle_man.model.User;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;


public class MiddleManAuthenticationFilter extends UsernamePasswordAuthenticationFilter {

    private JWTUtil jwtUtil;
    private AuthenticationManager authenticationManager; 

    public MiddleManAuthenticationFilter(AuthenticationManager authenticationManager,JWTUtil jwtUtil) {
        this.authenticationManager = authenticationManager;
        this.jwtUtil = jwtUtil;
    }
    @Override
    public Authentication attemptAuthentication(HttpServletRequest request, HttpServletResponse response)throws AuthenticationException {
         String username = request.getParameter("username");
         String password = request.getParameter("password");
         UsernamePasswordAuthenticationToken authenticationToken =
                            new UsernamePasswordAuthenticationToken(username, password);
        return authenticationManager.authenticate(authenticationToken);
         
    }
    // TODO
    // decide about the refersh_token b/c we can login again rather than using refersh_token if the 
    // access_token expired
    // or we can make access_token to not expire but that hase security vulnerability
    @Override
    protected void successfulAuthentication(HttpServletRequest request, HttpServletResponse response, FilterChain chain,Authentication authentication) throws IOException, ServletException {
        User user = (User)authentication.getPrincipal();
        Map<String, String> tokens = new HashMap<>();
        tokens.put("access_token", jwtUtil.generateAccessToken(user));
        tokens.put("refersh_token", jwtUtil.generateRefershToken(user));
        response.setContentType("application/json");
        new ObjectMapper().writeValue(response.getOutputStream(), tokens);

    }
}

