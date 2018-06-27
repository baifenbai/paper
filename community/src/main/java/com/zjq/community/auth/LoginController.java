package com.zjq.community.auth;

import com.zjq.community.bussiness.model.User;
import com.zjq.community.bussiness.service.UserService;
import com.zjq.community.common.model.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.soap.SOAPBinding;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("/auth")
public class LoginController {
    @Autowired
    UserService userService;

    @RequestMapping("/login")
    @ResponseBody
    public Result login(HttpServletRequest request, HttpServletResponse response, @RequestParam( "username") String username,
                        @RequestParam("password") String password) throws IOException {
        User user = userService.findByName(username);
        Result result = new Result();
        if(password.equals(user.getPassword())){
            String token = JWT.sign(user,30L * 24L * 3600L * 1000L);
            result.putData("token",token);
            result.putData("userId",user.getId());
            result.putData("username",user.getName());
            result.putData("photo",user.getPhoto());
            result.setCode(200);
        }
        else{
            result.setCode(1000);
            result.setMessage("error");
        }
        return result;
    }
}
