package com.zjq.community.bussiness.service;

import com.zjq.community.bussiness.model.Type;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface TypeService {
    List<Type> findAll(Pageable pageable);

    List<Type> findAll();
}
