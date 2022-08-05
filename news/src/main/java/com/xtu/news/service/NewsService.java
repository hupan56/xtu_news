package com.xtu.news.service;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.xtu.news.pojo.News;
import com.baomidou.mybatisplus.extension.service.IService;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 *普通用户的service层
 */
public interface NewsService extends IService<News> {
    //通过关键词模糊查询关键词，好像没用到=-=
    List<News> getNewsByKey(String keyWord, int currentPage,int pageSize);
    //通过过滤标签获得新闻
    List<News>getNewsByTags(  String keyWord,
                             String location ,  Integer time,
                             String type, String dept,int currentPage,int pageSize);
    //获得所有新闻分类
    List<String>getAllNewsType();
    //获得所有新闻部门
    List<String>getAllNewsDept();
    //获得所有新闻年份
    List<Integer>getAllNewsYear();

}
