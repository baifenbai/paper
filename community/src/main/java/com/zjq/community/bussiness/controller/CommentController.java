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
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/comment")
public class CommentController {

    @Autowired
    CommentService commentService;
    @Autowired
    UserService userService;

    @RequestMapping("/findOne")
    public ModelAndView findCommentById(Long id){

       Comment comment =  commentService.findById(id);

       comment = new Comment();
       comment.setId((long) 1);
       comment.setContent("2131");
        ModelAndView model = new ModelAndView();
        model.setViewName("index");
        model.addObject("comment",comment);
        return model;
    }

    @RequestMapping("/findComments")
    @ResponseBody
    public Map findComments(PageModel<Comment> pageModel){
        Map map = new HashMap<>();
        Pageable pageable = new PageRequest(pageModel.getCurr(),pageModel.getSize());
        Page<Comment> comments = commentService.findFirstLevel(pageable);
        pageModel.setCount((int)comments.getTotalElements());
        pageModel.setTotalPage(comments.getTotalPages());
        pageModel.setData(comments.getContent());

        map.put("comments",comments.getContent());
        map.put("curr",pageModel.getCurr());
        map.put("size",pageModel.getSize());
        map.put("totalPage",pageModel.getTotalPage());
        return map;
    }

    @RequestMapping("/addComment")
    @ResponseBody
    public Comment addComment(Comment comment,String dateTime){
        Date date = new Date();
        date.setTime(Long.parseLong(dateTime));
        comment.setDate(date);
        Comment topic = commentService.findById(comment.getParentId());
        topic.setTotalAnswer(topic.getTotalAnswer()+1);
        commentService.save(topic);
        return commentService.addComment(comment);
    }

    @ResponseBody
    @RequestMapping("/findReply")
    public List<Comment> findReply(Long id,PageModel pageModel){

        return  null;
    }
    @ResponseBody
    @RequestMapping("/delReply")
    public void delReply(Long id){
        commentService.delete(id);
    }

    //详情页面
    @RequestMapping("/detail/{id}")
    public ModelAndView detail(@PathVariable Long id,PageModel pageModel){
        Pageable pageable = new PageRequest(pageModel.getCurr(),pageModel.getSize());
        List<Comment> comments = commentService.findReplay(id);
//        pageModel.setCount((int)comments.getTotalElements());
//        pageModel.setTotalPage(comments.getTotalPages());

        Comment comment = commentService.findById(id);
        User user = userService.findById(comment.getUserId());
        List<Comment> hotComments = commentService.findHotComments();

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("detail/detail");
        modelAndView.addObject("comments",comments);
        modelAndView.addObject("user",user);
        modelAndView.addObject("pg",pageModel);
        modelAndView.addObject("comment",comment);
        modelAndView.addObject("hot",hotComments);
        return  modelAndView;
    }

    @RequestMapping("/hot")
    public List<Comment> hotComments(){
        return commentService.findHotComments();
    }

    @RequestMapping("/agree")
    @ResponseBody
    public String agree(Long id){
        Comment comment = commentService.findById(id);
        comment.setTotalAgree(comment.getTotalAgree()+1);
        commentService.save(comment);
        return comment.getTotalAgree().toString();
    }

    @RequestMapping("/delete")
    public void deleteTopic(Long id){
        commentService.delete(id);
    }

    @RequestMapping("/search")
    @ResponseBody
    public List<Comment> search(String key){
        return commentService.findByTitleLike(key);
    }


}
