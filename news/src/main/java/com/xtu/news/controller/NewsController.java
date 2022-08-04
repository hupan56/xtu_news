package com.xtu.news.controller;


import com.xtu.news.pojo.News;
import com.xtu.news.pojo.Search;
import com.xtu.news.service.impl.NewsServiceImpl;
import com.xtu.news.utils.ResultUtil;
import lombok.val;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class NewsController {

    @Autowired
    NewsServiceImpl newsService;


    @RequestMapping(value = "news",method = RequestMethod.GET)
    public ResultUtil getALLNews(){

        List<News> list = newsService.list();
        return new ResultUtil(true,"查询所有文章成功了",list,200);

    }

    @RequestMapping(value = "newsPage",method = RequestMethod.GET)
        public ResultUtil getALLNewsByTags(@RequestBody Search search){
        String keyWords = search.getKeyWords();
        String location = search.getLocation();
        Integer year = search.getYear();
        String type = search.getNewsType();
        String newsDept = search.getNewsDept();
        int currentPage = search.getCurrentPage();
        int pageSize = search.getPageSize();



        List<News> newsByTags = newsService.getNewsByTags(keyWords, location,  year, type, newsDept, currentPage, pageSize);
        return new ResultUtil(true,"查询所有文章成功了",newsByTags,200);

}




//    @RequestMapping(value = "newsPage",method = RequestMethod.GET)
//    public ResultUtil getALLNewsByTags(@RequestParam("keyWord") String keyWord,
//                                       @RequestParam("location")String location,  @RequestParam("time")Integer time,
//                                       @RequestParam("type") String type,@RequestParam("dept") String dept,
//                                       @RequestParam("currentPage") int currentPage, @RequestParam("pageSize")int pageSize ){
//
//        if(time==null){
//            System.out.println(2);
//        }
//        List<News> newsByTags = newsService.getNewsByTags(keyWord, location,  time, type, dept, currentPage, pageSize);
//        return new ResultUtil(true,"查询所有文章成功了",newsByTags,200);
//
//    }


}
