package com.zjq.community.bussiness.controller;

import com.zjq.community.bussiness.model.Admin;
import com.zjq.community.bussiness.model.Comment;
import com.zjq.community.bussiness.model.Type;
import com.zjq.community.bussiness.model.User;
import com.zjq.community.bussiness.service.CommentService;
import com.zjq.community.bussiness.service.TypeService;
import com.zjq.community.bussiness.service.UserService;
import com.zjq.community.common.model.AdminResult;
import com.zjq.community.common.model.PageModel;
import com.zjq.community.common.model.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.data.domain.Pageable;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    UserService userService;
    @Autowired
    CommentService commentService;
    @Autowired
    TypeService typeService;

    @RequestMapping("/loginPage")
    public ModelAndView loginPage(){
        ModelAndView model = new ModelAndView();
        model.setViewName("/admin/login");
        return  model;
    }

    @RequestMapping("/login")
    public ModelAndView login(Admin admin){
        ModelAndView model = new ModelAndView();
        model.setViewName("/admin/main");
        boolean r1 = admin.getUsername().equals("admin");
        boolean r2 = admin.getPassword().equals("admin");
        if(r1==true&&r2==true){
            return model;
        }
        return null;
    }
    @RequestMapping("/user")
    public ModelAndView userPage(){
        ModelAndView model = new ModelAndView();
        model.setViewName("/admin/user");
        return model;
    }
    @RequestMapping("/main")
    public ModelAndView userMain(){
        ModelAndView model = new ModelAndView();
        model.setViewName("/admin/main");
        return model;
    }

    @RequestMapping("/topic")
    public ModelAndView topicPage(){
        ModelAndView model = new ModelAndView();
        model.setViewName("/admin/topic");
        return model;
    }

    @RequestMapping("/type")
    public ModelAndView typePage(){
        ModelAndView model = new ModelAndView();
        model.setViewName("/admin/type");
        return model;
    }

    @RequestMapping("/userInfo")
    @ResponseBody
    public AdminResult findAllUser(PageModel pageModel){
        AdminResult result = new AdminResult();
        Pageable pageable = new PageRequest(pageModel.getCurr()-1,pageModel.getSize());
        List<User> users = userService.findAll(pageable);
        List<User> us = userService.findAll();
        result.setList(users);
        result.setCode(200);
        result.setCount(us.size());
        return result;
    }

    @RequestMapping("/topicInfo")
    @ResponseBody
    public AdminResult findTopic(PageModel pageModel){
        AdminResult result = new AdminResult();
        Pageable pageable = new PageRequest(pageModel.getCurr()-1,pageModel.getSize());
        List<Comment> comments = commentService.findAll(pageable);
        List<Comment> cs = commentService.findAll();
        result.setList(comments);
        result.setCode(200);
        result.setCount(cs.size());
        return result;
    }

    @RequestMapping("/typeInfo")
    @ResponseBody
    public AdminResult findType(PageModel pageModel){
        AdminResult result = new AdminResult();
        Pageable pageable = new PageRequest(pageModel.getCurr()-1,pageModel.getSize());
        List<Type> types = typeService.findAll(pageable);
        List<Type> ts = typeService.findAll();
        result.setList(types);
        result.setCode(200);
        result.setCount(ts.size());
        return result;
    }


    @RequestMapping("/userSearch")
    public String userSearch(){
        return "hello!";
    }

    @RequestMapping("/topicSearch")
    public String topicSearch(){
        return "hello!";
    }

    @RequestMapping("/typeSearch")
    public String typeSearch(){
        return "hello!";
    }

    @RequestMapping("/addType")
    public String addType(){
        return "hello!";
    }

    @RequestMapping("/test")
    public String test(){
        return "hello!";
    }
}
