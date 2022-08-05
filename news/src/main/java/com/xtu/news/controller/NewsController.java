package com.xtu.news.controller;


import com.xtu.news.pojo.News;
import com.xtu.news.pojo.Search;
import com.xtu.news.service.impl.NewsServiceImpl;
import com.xtu.news.utils.ResultUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import lombok.val;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@Api(tags="普通用户相关操作")
@RestController
public class NewsController {

    @Autowired
    NewsServiceImpl newsService;
    //返回所有的文章，未经过分页，不需要传值
    @ApiOperation(value = "搜寻文章，未分页", notes = "不需要token")
    @RequestMapping(value = "news",method = RequestMethod.GET)
    public ResultUtil getALLNews(){
        List<News> list = newsService.list();
        return new ResultUtil(true,"查询所有文章成功了",list,200);

    }
    //获得文章所有分类
    @ApiOperation(value = "获得所有文章的分类", notes = "不需要token")
    @RequestMapping(value = "newsType",method = RequestMethod.GET)
    public ResultUtil getALLNewsType(){
        List<String> list = newsService.getAllNewsType();
        return new ResultUtil(true,"查询文章所有分类成功了",list,200);

    }
    //获得文章所有部门
    @ApiOperation(value = "获得所有文章的部门", notes = "不需要token")
    @RequestMapping(value = "newsDept",method = RequestMethod.GET)
    public ResultUtil getALLNewsDept(){
        List<String> list = newsService.getAllNewsDept();
        return new ResultUtil(true,"查询文章所有发布部门成功了",list,200);

    }
    //获得文章所有年份
    @ApiOperation(value = "获得所有文章的年份", notes = "不需要token")
    @RequestMapping(value = "newsYear",method = RequestMethod.GET)
    public ResultUtil getALLNewsTime(){
        List<Integer> list = newsService.getAllNewsYear();
        return new ResultUtil(true,"查询文章所有年份成功了",list,200);

    }

    //传入search对象进行模糊查询
    @ApiOperation(value = "用户根据过滤的标签体和关键词进行模糊查询，这里传过来的需要一个Search对象，都可以为空", notes = "不需要token")
    @ApiImplicitParam(name = "search", value = "Search对象", paramType = "body", dataType = "Search")
    @RequestMapping(value = "newsPage",method = RequestMethod.POST)
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



}
