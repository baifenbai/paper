package com.zjq.community.common.model;

import java.util.List;

public class AdminResult<T> extends Result {
    List<T> list;

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }
}
