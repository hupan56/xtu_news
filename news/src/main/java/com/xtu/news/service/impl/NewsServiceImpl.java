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
 *
 */
@Service
public class NewsServiceImpl extends ServiceImpl<NewsMapper, News>
    implements NewsService{


    @Autowired
    NewsMapper newsMapper;


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
    @Override
    public List<News> getNewsByTags(String keyWord,
                                    String location, Integer time,
                                    String type, String dept,
                                    int currentPage, int pageSize) {
        Page<News>  page = new Page<>(currentPage, pageSize);
        newsMapper.getNewsByTags(page,keyWord, location, time, type, dept);
        return page.getRecords();
    }


//    @Override
//    public IPage<News> getPage(int currentPage, int pageSize) {
//        IPage<News> page=new Page<>(currentPage,pageSize);
//        newsMapper.selectPage(page,null);
//        return page;
//    }
//
//    @Override
//    public IPage<News> getPage(int currentPage, int pageSize, News news) {
//        LambdaQueryWrapper<News> lqw=new LambdaQueryWrapper<News>();
//        lqw.like(Strings.isNotEmpty(news.getNewsType()),News::getNewsType,news.getNewsType());
//        lqw.like(Strings.isNotEmpty(news.getNewsTitle()),News::getNewsTitle,news.getNewsTitle());
//        lqw.like(Strings.isNotEmpty(news.getNewsContent()),News::getNewsContent,news.getNewsContent());
//        lqw.like(news.getNewsTime()!=null,News::getNewsTime,news.getNewsTime());
//        lqw.like(Strings.isNotEmpty(news.getNewsDept()),News::getNewsDept,news.getNewsDept());
//        IPage<News> page=new Page<>(currentPage,pageSize);
//        newsMapper.selectPage(page,lqw);
//        return page;
//
//    }


}




