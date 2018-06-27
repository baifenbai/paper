package com.zjq.community.bussiness.service;

import com.zjq.community.bussiness.model.Comment;
import com.zjq.community.bussiness.model.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface CommentService {

    Comment findById(Long id);

    List<Comment> findAll();

    List<Comment> findAll(Pageable pageable);

    Page<Comment> findFirstLevel(Pageable pageable);

    List<Comment> findReplay(Long id);

    List<Comment> findHotComments();

    Comment addComment(Comment comment);

    Comment save(Comment comment);

    void delete(Long id);

    //查找所有话题和评论
    List<Comment> findByUserId(Long userId);

    //查找用户发布的话题
    List<Comment> findTopic(Long userId);

    //查找用户有那些评论
    List<Comment> findComment(Long userId);

    //查找用户评论了那些话题
    List<Comment> findCommentParent(Long userId);

    List<Comment> findByTitleLike(String key);
}
