package com.zjq.community.bussiness.controller;

import com.zjq.community.bussiness.model.Comment;
import com.zjq.community.bussiness.model.User;
import com.zjq.community.bussiness.service.CommentService;
import com.zjq.community.bussiness.service.UserService;
import com.zjq.community.common.model.PageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RestController
@RequestMapping("/community")
public class indexController {
    @Autowired
    CommentService commentService;

    @Autowired
    private UserService userService;

    @RequestMapping
    public ModelAndView index(ModelAndView modelAndView,PageModel pageModel){

       // Sort sort = new Sort();
        Pageable pageable = new PageRequest(pageModel.getCurr(),pageModel.getSize());
        Page<Comment> comments = commentService.findFirstLevel(pageable);
        pageModel.setCount((int)comments.getTotalElements());
        pageModel.setTotalPage(comments.getTotalPages());
        List<Comment> hotComments = commentService.findHotComments();

        modelAndView.setViewName("main");
        modelAndView.addObject("pg",pageModel);
        modelAndView.addObject("comments",comments.getContent());
        modelAndView.addObject("hot",hotComments);
        return modelAndView;
    }

    @RequestMapping("/test")
    public String test(String userName){
        User user = userService.findByName("张良玉");
        System.out.println(user.getAddress());
        user = userService.findAll().get(0);
        return user.getAddress()+"eferw"+user.getId()+user.getName()+user.getPhone()+user.getSex();
    }

    @RequestMapping("/t")
    public String login(){
        return "123";
    }
}
