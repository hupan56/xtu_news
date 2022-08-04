package com.xtu.news.service;

import com.xtu.news.pojo.Admin;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 *
 */
public interface AdminService extends IService<Admin> {

    Admin getAdminByName(String name);
}
