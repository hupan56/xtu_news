package com.xtu.news.mapper;

import com.xtu.news.pojo.Admin;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.xtu.news.pojo.News;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

/**
 * @Entity com.xtu.news.pojo.Admin
 */
@Mapper
@Repository
public interface AdminMapper extends BaseMapper<Admin> {
    //    根据用户名查找用户
    @Select("select * from admin where admin_name=#{adminName}")
    Admin getAdminByName(@Param("adminName") String adminName);

}




