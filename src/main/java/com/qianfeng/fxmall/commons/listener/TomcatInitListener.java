package com.qianfeng.fxmall.commons.listener;


import com.qianfeng.fxmall.commons.Utils.ApplicationContextUtils;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class TomcatInitListener implements ServletContextListener {


    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println(">>>>>>>>项目启动>>>>>>>>");
        System.out.println(">>>>>>>>获取已经初始化好的Spring容器>>>>>>>>");
        ServletContext servletContext = sce.getServletContext();
        String parameter = servletContext.getInitParameter("contextConfigLocation");
        System.out.println(parameter);

        WebApplicationContext applicationContext = WebApplicationContextUtils.getWebApplicationContext(servletContext);
        ApplicationContextUtils.setApplicationContext(applicationContext);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

    }
}
