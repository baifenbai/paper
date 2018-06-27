package com.zjq.community.bussiness.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "t_comments")
public class Comment extends Base {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;

    private String content;

    private String path;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date date;

    private Long level;

    @Column(name = "user_id")
    private Long userId;

    @Column(name = "parent_id")
    private Long parentId;

    @Column(name = "total_answer")
    private Long totalAnswer = Long.parseLong("0");//默認0

    @Column(nullable = true,name = "total_view")
    private Long totalView = Long.parseLong("0");//默認0;话题，问题被查看次数

    @Column(nullable = true,name = "total_agree")
    private Long totalAgree = Long.parseLong("0");//默認0;回复赞同次数

    @Column(nullable = true,name = "total_disagree")
    private Long totalDisagree = Long.parseLong("0");//默認0;回复不赞同次数

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Long getLevel() {
        return level;
    }

    public void setLevel(Long level) {
        this.level = level;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getParentId() {
        return parentId;
    }

    public void setParentId(Long parentId) {
        this.parentId = parentId;
    }

    public Long getTotalAnswer() {
        return totalAnswer;
    }

    public void setTotalAnswer(Long totalAnswer) {
        this.totalAnswer = totalAnswer;
    }

    public Long getTotalView() {
        return totalView;
    }

    public void setTotalView(Long totalView) {
        this.totalView = totalView;
    }

    public Long getTotalAgree() {
        return totalAgree;
    }

    public void setTotalAgree(Long totalAgree) {
        this.totalAgree = totalAgree;
    }

    public Long getTotalDisagree() {
        return totalDisagree;
    }

    public void setTotalDisagree(Long totalDisagree) {
        this.totalDisagree = totalDisagree;
    }
}
