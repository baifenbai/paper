package com.zjq.community.bussiness.service.impl;

import com.zjq.community.bussiness.model.Comment;
import com.zjq.community.bussiness.repository.CommentRepository;
import com.zjq.community.bussiness.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {
    @Autowired
    CommentRepository commentRepository;

    @Override
    public Comment findById(Long id) {
        return commentRepository.findById(id);
    }

    @Override
    public List<Comment> findAll() {
        return commentRepository.findAll();
    }

    @Override
    public List<Comment> findAll(Pageable pageable) {
        return commentRepository.findAll(pageable).getContent();
    }

    @Override
    public Page<Comment> findFirstLevel(Pageable pageable) {
        return commentRepository.findByParentIdIsNull(pageable);
    }

    @Override
    public List<Comment> findReplay(Long id) {
        return commentRepository.findByParentId(id);
    }

    @Override
    public List<Comment> findHotComments() {
        return commentRepository.findHotComment();
    }

    @Override
    public Comment addComment(Comment comment) {
        return commentRepository.save(comment);
    }

    @Override
    public Comment save(Comment comment) {
        return commentRepository.save(comment);
    }

    @Override
    public void delete(Long id) {
        commentRepository.delete(id);
    }

    @Override
    public List<Comment> findByUserId(Long userId) {
        return commentRepository.findByUserId(userId);
    }

    @Override
    public List<Comment> findTopic(Long userId) {
        return commentRepository.findTopic(userId);
    }

    @Override
    public List<Comment> findComment(Long userId) {
        return commentRepository.findComment(userId);
    }

    @Override
    public List<Comment> findCommentParent(Long userId) {
        List<Comment> comments = this.findComment(userId);
        List<Comment> topics = new ArrayList<>();
        for(Comment comment : comments){
            Comment topic = commentRepository.findById(comment.getParentId());
            topics.add(topic);
        }
        return topics;
    }

    @Override
    public List<Comment> findByTitleLike(String key) {
        return commentRepository.findByTitleContaining(key);
    }

}
