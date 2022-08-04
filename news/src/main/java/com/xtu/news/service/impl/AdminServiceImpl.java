package com.xtu.news.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xtu.news.pojo.Admin;
import com.xtu.news.pojo.News;
import com.xtu.news.service.AdminService;
import com.xtu.news.mapper.AdminMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 */
@Service
public class AdminServiceImpl extends ServiceImpl<AdminMapper, Admin>
    implements AdminService {

    @Autowired
    AdminMapper adminMapper;

    @Override
    public Admin getAdminByName(String name) {
       Admin adminByName = adminMapper.getAdminByName(name);
        return adminByName;
    }
}




