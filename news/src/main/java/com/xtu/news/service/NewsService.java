package com.xtu.news.service;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.xtu.news.pojo.News;
import com.baomidou.mybatisplus.extension.service.IService;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 *
 */
public interface NewsService extends IService<News> {

    List<News> getNewsByKey(String keyWord, int currentPage,int pageSize);

    List<News>getNewsByTags(  String keyWord,
                             String location ,  Integer time,
                             String type, String dept,int currentPage,int pageSize);


//    IPage<News> getPage(int currentPage, int pageSize);
//
//    public IPage<News> getPage(int currentPage, int pageSize, News news);
}
