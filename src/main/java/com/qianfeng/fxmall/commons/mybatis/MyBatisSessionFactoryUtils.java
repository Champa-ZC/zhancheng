package com.qianfeng.fxmall.commons.mybatis;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;

import java.io.IOException;
import java.io.InputStream;
/**
 * sessionfactory的封装：做到全局唯一
 */
@Configuration
public class MyBatisSessionFactoryUtils {

//    /**
//     * 饿汉单例
//     */
//    public static SqlSessionFactory sqlSessionFactory;
//    private static ThreadLocal<SqlSession> threadLocal = new ThreadLocal<>();
//
//    static {
//        initSessionFactory();
//    }
//
//    private static void initSessionFactory(){
//        try {
//            //1、配置文件只需加载一次
//            InputStream resourceAsStream = Resources.getResourceAsStream("mybatis.cfg.xml");
//            //2、全局唯一
//            sqlSessionFactory = new SqlSessionFactoryBuilder().build(resourceAsStream);
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//    }
//
//    public static SqlSessionFactory getSqlSessionFactory(){
//        if(sqlSessionFactory == null){
//            initSessionFactory();
//        }
//        return sqlSessionFactory;
//    }
//
//    public static SqlSession getSession(){
//        System.out.println(Thread.currentThread().getName());
//        SqlSession session = threadLocal.get();
//        if(session == null) {
//            session = sqlSessionFactory.openSession();
//            threadLocal.set(session);
//        }
//        return session;
//    }
       private static ThreadLocal<SqlSession> threadLocal = new ThreadLocal<>();

       @Bean
       public SqlSessionFactory provideSqlSessionFactory() throws IOException {
           InputStream inputStream = Resources.getResourceAsStream("mybatis.cfg.xml");
           SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
           return sqlSessionFactory;
       }

       @Scope("prototype")
       @Bean
       public SqlSession provideSession(SqlSessionFactory sqlSessionFactory){
           SqlSession session = threadLocal.get();
           if(session == null){
               session = sqlSessionFactory.openSession();
               threadLocal.set(session);
           }
           return session;
       }
}
