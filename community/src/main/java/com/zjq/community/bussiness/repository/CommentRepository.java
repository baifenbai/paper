package com.zjq.community.bussiness.repository;

import com.zjq.community.bussiness.model.Comment;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface CommentRepository extends JpaRepository<Comment, Long> {
    Comment findById(Long id);

    Page<Comment> findByParentIdIsNull(Pageable pageable);

    List<Comment> findByParentId(Long id);

    @Query(value = "select * from t_comments order by total_view desc limit 10",nativeQuery=true)
    List<Comment> findHotComment();

    List<Comment> findByUserId(Long id);

    @Query(value = "select * from t_comments where user_id=?1 AND parent_id is null order by date desc",nativeQuery=true)
    List<Comment> findTopic(Long userId);//通过用户id查找topic

    @Query(value = "select * from t_comments where user_id=?1 AND parent_id is not null order by date desc",nativeQuery=true)
    List<Comment> findComment(Long id);//通过用户id查找comment

    List<Comment> findByTitleContaining(String key);

}
