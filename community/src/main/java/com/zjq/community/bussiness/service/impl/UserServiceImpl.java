package com.zjq.community.bussiness.service.impl;

import com.zjq.community.bussiness.model.Comment;
import com.zjq.community.bussiness.model.User;
import com.zjq.community.bussiness.repository.UserRepository;
import com.zjq.community.bussiness.service.CommentService;
import com.zjq.community.bussiness.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserServiceImpl implements UserService{
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private CommentService commentService;

    @Override
    public User findByName(String userName) {

        return userRepository.findByName(userName);
    }

    @Override
    public List<User> findAll() {

        return userRepository.findAll();
    }

    @Override
    public List<User> findAll(Pageable pageable) {
        Page<User> page = userRepository.findAll(pageable);
        return page.getContent();
    }

    @Override
    public User findById(Long id) {
        return userRepository.findById(id);
    }

    @Override
    public User addUser(User user) {
        return userRepository.save(user);
    }

    @Override
    public User edit(User user) {
        return  userRepository.saveAndFlush(user);
    }

    @Override
    public void postTopic(Comment comment) {
        commentService.addComment(comment);
    }

    @Override
    @Transactional
    public void updatePhoto(User user) {
        userRepository.updatePhotoById(user.getPhoto(),user.getId());
    }

    @Override
    public void updatePassword(String password, Long id) {
        userRepository.updatePassword(password,id);
    }

    @Override
    public void delete(Long id) {
        userRepository.delete(id);
    }

    @Override
    public boolean login() {
        return false;
    }


}
