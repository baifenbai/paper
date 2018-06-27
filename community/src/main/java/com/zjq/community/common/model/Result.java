package com.zjq.community.common.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Result {

    private int code;

    private String message;

    private Integer count;

    private final Map<String, Object> data = new HashMap<>();

    public Result(){}

    public Result(int code, String message) {
        this.code = code;
        this.message = message;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Map<String, Object> getData() {
        return data;
    }

    public Result putData(String key,Object value){
        data.put(key,value);
        return this;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }
}
