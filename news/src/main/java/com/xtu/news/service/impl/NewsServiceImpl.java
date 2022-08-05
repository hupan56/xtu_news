package com.xtu.news.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xtu.news.pojo.News;
import com.xtu.news.service.NewsService;
import com.xtu.news.mapper.NewsMapper;
import org.apache.logging.log4j.util.Strings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 *实现接口
 */
@Service
public class NewsServiceImpl extends ServiceImpl<NewsMapper, News>
    implements NewsService{
    @Autowired
    NewsMapper newsMapper;

    //根据关键词进行一个模糊搜索
    public List<News> getNewsByKey(String keyWord, int currentPage, int pageSize) {
        //        这里需要进行一个判断都keyWord为空或者空字符串时，进入全部搜索
        if(keyWord==" "||keyWord==null||keyWord==""){
            Page<News> page = new Page<News>(currentPage, pageSize);
            newsMapper.getAll(page);
            return  page.getRecords();
        }else {
            Page<News> page = new Page<>(currentPage, pageSize);
            newsMapper.getNewsByKey(page, keyWord);
            return page.getRecords();
        }

    }
    //根据条件过滤筛选
    @Override
    public List<News> getNewsByTags(String keyWord,
                                    String location, Integer time,
                                    String type, String dept,
                                    int currentPage, int pageSize) {
        Page<News>  page = new Page<>(currentPage, pageSize);
        newsMapper.getNewsByTags(page,keyWord, location, time, type, dept);
        return page.getRecords();
    }
    //获得所有新闻分类
    @Override
    public List<String> getAllNewsType() {
        return newsMapper.getAllNewsType();
    }
    //获得所有新闻发布部门
    @Override
    public List<String> getAllNewsDept() {
        return newsMapper.getAllNewsDept();
    }
    //获得所有新闻发布年份
    @Override
    public List<Integer> getAllNewsYear() {
        return newsMapper.getAllNewsYear();
    }
}




