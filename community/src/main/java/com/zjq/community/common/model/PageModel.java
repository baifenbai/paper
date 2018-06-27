package com.zjq.community.common.model;

import java.util.List;

public class PageModel<T> {

    private List<T> data;

    //每一页的大小
    private int size = 5;

    //当前页页号
    private int curr = 0;

    //数据总条数
    private int count = 0;

    //总页数
    private int totalPage;

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public int getCurr() {
        return curr;
    }

    public void setCurr(int curr) {
        this.curr = curr;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }
}
