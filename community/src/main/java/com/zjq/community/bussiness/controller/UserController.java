package com.zjq.community.bussiness.controller;

import com.sun.org.apache.regexp.internal.RE;
import com.zjq.community.bussiness.model.Comment;
import com.zjq.community.bussiness.model.User;
import com.zjq.community.bussiness.service.CommentService;
import com.zjq.community.bussiness.service.UserService;
import com.zjq.community.common.model.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Random;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    UserService userService;

    @Autowired
    CommentService commentService;

    @RequestMapping("/login")
    public ModelAndView login(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/user/login");
        return modelAndView;
    }

    @RequestMapping("/reg")
    public ModelAndView register1(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/user/reg");
        return modelAndView;
    }

    @RequestMapping("/register")
    public void register(User user){
        userService.addUser(user);
    }

    @RequestMapping("/postTopic")
    public ModelAndView postTopic(Comment comment){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/user/postTopic");
        return modelAndView;

    }

//    @RequestMapping("/postTopicView")
//    public ModelAndView postTopicView(){
//        ModelAndView modelAndView = new ModelAndView();
//        modelAndView.setViewName("/user/postTopic");
//        return modelAndView;
//    }

    @RequestMapping("/center")
    public ModelAndView userCneter(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/user/center");
        return modelAndView;
    }


    @RequestMapping("/home")
    public ModelAndView home(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/user/home");
        return modelAndView;
    }

    @RequestMapping("/topicView")
    public ModelAndView topicView(Long id){
        //List<Comment> topics= commentService.findTopic(id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/user/topic");
//        modelAndView.addObject("topics",topics);
        return modelAndView;
    }

    @RequestMapping("/topicInfo")
    @ResponseBody
    public Result topicInfo(Long id){
        List<Comment> topics= commentService.findTopic(id);
        Result result = new Result();
        result.setCode(200);
        result.putData("topics",topics);
        return result;
    }

    @RequestMapping("/addTopic")
    @ResponseBody
    public Comment addTopic(Comment topic,String dateTime){
        Date date = new Date();
        date.setTime(Long.parseLong(dateTime));
        topic.setDate(date);
        return commentService.save(topic);
    }

    @RequestMapping("/userInfo")
    @ResponseBody
    public Result userInfo(Long id){
        User user = userService.findById(id);
        List<Comment> topics = commentService.findTopic(id);
        List<Comment> comments = commentService.findCommentParent(id);
        Result result = new Result();
        result.setCode(200);
        result.putData("user",user);
        result.putData("topics",topics);
        result.putData("comments",comments);
        return result;
    }

    @RequestMapping("/edit")
    @ResponseBody
    public User edit(User user){
       User u = userService.findById(user.getId());
       u.setSex(user.getSex());
       u.setName(user.getName());
       u.setAddress(user.getAddress());
       u.setPhone(user.getPhone());
        return userService.edit(u);
    }

    @RequestMapping("/del")
    @ResponseBody
    public Result delete(Long id){
         userService.delete(id);
         return new Result();
    }
    @RequestMapping("/editPassword")
    @ResponseBody
    public Result editPassword(User user){
        Result result = new Result();
        User u = userService.findById(user.getId());
        u.setPassword(user.getPassword());
        userService.edit(u);
        result.setCode(200);
        return result;
    }

    @PostMapping("/upload")
    @ResponseBody
    public Result uploadPhoto(Long id,MultipartFile file,HttpServletRequest request){
        String path = "/pic/";
        String filePath = "";
        String address = "http://192.168.2.114:8080";
        String add = request.getSession().getServletContext().getRealPath("/pic"); //服务器地址
        if (!file.isEmpty()) {
            // 文件保存路径
            filePath = add + file.getOriginalFilename();
            // 转存文件
            try {
                File file1 = new File(filePath);
                file.transferTo(file1);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        User user = userService.findById(id);
        user.setPhoto(filePath);
        userService.edit(user);
        Result result = new Result();
        result.setCode(200);
        result.putData("user",user);
        return  result;
    }

}
