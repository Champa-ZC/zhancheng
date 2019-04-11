package com.qianfeng.fxmall.commons.Utils;

import org.springframework.web.context.WebApplicationContext;

public class ApplicationContextUtils {

    public static WebApplicationContext applicationContext;

    public static WebApplicationContext getApplicationContext(){
        return applicationContext;
    }

    public static void setApplicationContext(WebApplicationContext applicationContext){
        ApplicationContextUtils.applicationContext = applicationContext;
    }
}
