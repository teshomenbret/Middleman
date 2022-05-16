package com.middleman.middle_man.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.auth0.jwt.exceptions.JWTVerificationException;
import com.auth0.jwt.interfaces.DecodedJWT;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.filter.OncePerRequestFilter;

public class MiddleManAuthorizationFilter extends OncePerRequestFilter {

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
            throws ServletException, IOException {

            if(request.getServletPath().equals("/login")){
                filterChain.doFilter(request, response);
            }
            else{
                String authenticationHeader = request.getHeader("Authorization");

                if(authenticationHeader != null && !authenticationHeader.isBlank() && authenticationHeader.startsWith("Bearer ")){
                    
                    try{
                        String token = authenticationHeader.substring("Bearer ".length());
                        JWTUtil jwtUtil = new JWTUtil();
                        DecodedJWT decodedToken = jwtUtil.validateToken(token);
                        String username = decodedToken.getSubject();
                        String[] roles = decodedToken.getClaim("roles").asArray(String.class);
                        Collection<SimpleGrantedAuthority> authorities = new ArrayList<>();
                        for(String roleName :roles){
                            authorities.add(new SimpleGrantedAuthority(roleName));
                        }
    
                        UsernamePasswordAuthenticationToken authenticationToken =
                                new UsernamePasswordAuthenticationToken(username, null, authorities);
                                
                        SecurityContextHolder.getContext().setAuthentication(authenticationToken);
                        filterChain.doFilter(request, response);

                    }
                    catch(JWTVerificationException exc){
                        // Failed to verify the token
                        response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
                        Map<String, String> error = new HashMap<>();
                        error.put("error_message", exc.getMessage());
                        response.setContentType("application/json");
                        new ObjectMapper().writeValue(response.getOutputStream(), error);
                    }
                    catch(Exception exceptions){

                    }
                   
                }else{
                    filterChain.doFilter(request, response);
                }
            }


            

        
    }
    
}
