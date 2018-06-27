package com.zjq.community.bussiness.repository;

import com.zjq.community.bussiness.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User findByName(String userName);
    User findById(Long id);

    @Modifying
    @Query(value = "update t_users  set photo =?1 where id =?2",nativeQuery = true)
    void updatePhotoById(String photo,Long id);


    @Modifying
    @Query(value = "update t_users  set password =?1 where id =?2",nativeQuery = true)
    void updatePassword(String password,Long id);
}
