package com.zjq.community.bussiness.service;

import com.zjq.community.bussiness.model.Comment;
import com.zjq.community.bussiness.model.User;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface UserService {

    boolean login();

    User findByName(String userName);

    List<User> findAll();

    List<User> findAll(Pageable pageable);

    User findById(Long id);

    User addUser(User user);

    User edit(User user);

    void postTopic(Comment comment);

    void updatePhoto(User user);

    void updatePassword(String password,Long id);

    void delete(Long id);

}
