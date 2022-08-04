package com.xtu.news;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.xtu.news.mapper.AdminMapper;
import com.xtu.news.mapper.NewsMapper;
import com.xtu.news.pojo.News;
import com.xtu.news.service.impl.AdminServiceImpl;
import com.xtu.news.service.impl.NewsServiceImpl;
import javafx.beans.binding.ObjectExpression;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.EnableLoadTimeWeaving;

import java.util.List;

@SpringBootTest
class NewsApplicationTests {

    @Autowired
    AdminMapper adminMapper;

    @Autowired
    NewsMapper newsMapper;

    @Autowired
    NewsServiceImpl newsService;
    @Autowired
    AdminServiceImpl adminService;
    @Test
    void contextLoads() {
        System.out.println(adminMapper.selectById(1));
    }
    @Test
    void test1(){
        System.out.println(adminService.listObjs());
    }
    @Test
    void testNews(){
        System.out.println(newsService.list());
    }
    @Test
    void testNewsType(){
        QueryWrapper<News> queryWrapper = new QueryWrapper<>();
        queryWrapper.select("news_type");
        List<News> users = newsMapper.selectList(queryWrapper);

//        System.out.println(newsService.);
    }
    @Test
    void testNewsDept(){
        QueryWrapper<News> queryWrapper = new QueryWrapper<>();
        queryWrapper.select("news_dept");
        List<News> users = newsMapper.selectList(queryWrapper);

//        System.out.println(newsService.);
    }
@Test
    void testNewsDate(){
        QueryWrapper<News> queryWrapper = new QueryWrapper<>();
        queryWrapper.select("news_time");
        List<News> users = newsMapper.selectList(queryWrapper);

//        System.out.println(newsService.);
    }

    @Test
    void testNewsPage(){
//        System.out.println(newsService.getNewsByKey("同志", 1,5));
        Page<News> page = new Page<News>(1, 2);
        System.out.println(newsMapper.getNewsByKey(page, "同志").getRecords());
    }
    @Test
    void testNewsPageSum(){
//        System.out.println(newsService.getNewsByKey("同志", 1,5));
        Page<News> page = new Page<News>(1, 2);
        System.out.println(newsMapper.getNewsByTags(page, "","不限",2022,"","").getRecords());
//        System.out.println(newsMapper.getNewsByTags(page, "","不限",2022,"","").getTotal());
    }

    @Test
    void testNewsPageSum1(){
        News news=new News();
        Page<News> page = new Page<News>(1, 2);
        System.out.println(newsService.getNewsByTags("","不限",null,"","",1,2));

    }
////        System.out.println(newsService.getNewsByKey("同志", 1,5));

////

}
