package com.zjq.community.bussiness.service.impl;

import com.zjq.community.bussiness.model.Type;
import com.zjq.community.bussiness.repository.TypeRepository;
import com.zjq.community.bussiness.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Pageable;

import java.util.List;

@Service
public class TypeServiceImpl implements TypeService {
    @Autowired
    TypeRepository typeRepository;


    @Override
    public List<Type> findAll(Pageable pageable) {
        return typeRepository.findAll(pageable).getContent();
    }

    @Override
    public List<Type> findAll() {
        return typeRepository.findAll();
    }
}
