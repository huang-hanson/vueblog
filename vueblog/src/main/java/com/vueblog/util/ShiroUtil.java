package com.vueblog.util;

import com.vueblog.shiro.AccountProfile;
import org.apache.shiro.SecurityUtils;

/**
 * @author hanson
 * @date 2024/5/17 20:13
 */
public class ShiroUtil {

    public static AccountProfile getProfile(){
        return (AccountProfile) SecurityUtils.getSubject().getPrincipal();
    }
}
