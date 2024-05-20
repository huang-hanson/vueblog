package com.vueblog.shiro;

import org.apache.shiro.authc.AuthenticationToken;

/**
 * @author hanson
 * @date 2024/5/17 15:41
 */
public class JwtToken implements AuthenticationToken {

    private String token;

    public JwtToken(String jwt){
        this.token = jwt;
    }

    @Override
    public Object getPrincipal() {
        return token;
    }

    @Override
    public Object getCredentials() {
        return token;
    }
}
