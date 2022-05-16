package com.middleman.middle_man.security;

import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTCreationException;
import com.auth0.jwt.exceptions.JWTVerificationException;
import com.auth0.jwt.interfaces.DecodedJWT;
import com.middleman.middle_man.model.User;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Component;
import lombok.NoArgsConstructor;
import java.util.Date;
import java.util.stream.Collectors;

@Component 
@NoArgsConstructor
public class JWTUtil {

    // Injects the jwt-secret property set in the resources/application.properties file
    // @Value("${jwt-secret}")
    private String secret = "MIIJQQIBADANBgkqhkiG9w0BAQEFAASCCSswggknAgEAAoICAQCK5ng3ZVnxuj3mAuD+3JWnqERpHs2deoaw92DuJZUSccswQwSnEopJGqJ6zbGColgr6+p1cXmqYhz1qsywpBDAdbxTe4xS18ATlcyOBfR5S/gytk57ElWJTGAelajbXgne2r/6Fe66gWfPnXirXx3jXcVbeXrvj5LshJWO+thB4jXQgd+Fc8bxiNdO1mX3pl403sp92f63Cf9HK4E1o4SyG9GGSWTjoE8UlhRC+Hpb8qkDlz1yw2PRDAkOqq7C6AzfwZ9JRo5iSL2cHP5xglZPCwDtmMXnebLrToyXWJSymSnKlVJY530wBSMY7Kws5Av/+SmQgCGkoAeQoDSpPBoe2SsLJkuCFPEerqLz2gxkU52XYADHPsBsHbEY97GK1hzWByEZOewpW+Qyp78h02EjxPpgkDBVnySnYKbIxuWDv7hdA5F51Kdj8d2LX2WNoGSSJQM6Wwxyxj7YNrTs7kaiOlUkuyOeUTgqMc2L291I4Q1LZCWe63LZf83OJYMDOueGwg0xo4S7DBZyj7wdiu+WqJyEMQrZyiVsOnFY0GoGlMcXin6O0FXMiiZcVObuvk9Fo+tVw/zIwXlN";

    // TODO 
    // think about long will take for this token to expire change "+100*60*1000" in the code
    public String generateAccessToken(User user) throws IllegalArgumentException, JWTCreationException {
        String accessToken = JWT.create()
                .withSubject(user.getUsername())
                .withIssuedAt(new Date())
                .withExpiresAt(new Date(System.currentTimeMillis()+100*60*1000))
                .withIssuer("MIDDLEMAN")
                .withClaim("roles", user.getAuthorities().stream().map(GrantedAuthority::getAuthority).collect(Collectors.toList()))
                .sign(Algorithm.HMAC256(secret));
        return accessToken;     
    }
    // TODO 
    // if thare is no need for the refresh token this function is irrelevant
    public String generateRefershToken(User user) throws IllegalArgumentException, JWTCreationException {
        String refershToken = JWT.create()
                .withSubject(user.getUsername())
                .withExpiresAt(new Date(System.currentTimeMillis()+100*60*1000))
                .withIssuer("MIDDLEMAN")
                .withIssuedAt(new Date())
                .sign(Algorithm.HMAC256(secret));
        return refershToken;      
    }

    public  DecodedJWT validateToken(String token)throws JWTVerificationException {
        JWTVerifier verifier = JWT.require(Algorithm.HMAC256(secret)).build();
        DecodedJWT decodedToken = verifier.verify(token);
       
        return decodedToken;
    }

}
