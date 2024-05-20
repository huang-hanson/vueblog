package com.vueblog.shiro;

import lombok.Data;

import java.io.Serializable;

/**
 * @author hanson
 * @date 2024/5/17 17:33
 */
@Data
public class AccountProfile implements Serializable {
    private Long id;

    private String username;

    private String avatar;

    private String email;

}