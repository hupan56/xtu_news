package com.xtu.news.service;

import com.xtu.news.pojo.Admin;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 *管理员用户的service层
 */
public interface AdminService extends IService<Admin> {
    //通过用户名获得管理员，用于封装token和确认token
    Admin getAdminByName(String name);
}
