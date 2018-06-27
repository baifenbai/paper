package com.zjq.community.auth;

import com.zjq.community.bussiness.model.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TokenInterceptor implements HandlerInterceptor{
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        response.setCharacterEncoding("utf-8");
        String token = request.getHeader("token");
        if (null != token) {
            User user = JWT.unsign(token, User.class);
            String userId = request.getHeader("userId");
            //解密token后的loginId与用户传来的loginId不一致，一般都是token过期
            if (null != userId && null != user) {
                if (Integer.parseInt(userId) == user.getId()) {
                    return true;
                }
            }
        }
        response.sendRedirect("/user/login");
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
