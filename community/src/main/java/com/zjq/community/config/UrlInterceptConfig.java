package com.zjq.community.config;

import com.zjq.community.auth.TokenInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class UrlInterceptConfig extends WebMvcConfigurerAdapter {
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        //注册拦截器
       InterceptorRegistration iRegistration=registry.addInterceptor(new TokenInterceptor());
       iRegistration.addPathPatterns("/user/**",
               "/community/t",
               "/comment/agree",
               "/comment/addComment");
       iRegistration.excludePathPatterns("/user/login",
               "/user/topicView",
               "/user/reg",
               "/user/register",
               "/user/**.ftl",
               "/user/upload");
    }
}
