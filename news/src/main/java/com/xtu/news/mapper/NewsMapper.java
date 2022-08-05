package com.xtu.news.mapper;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.xtu.news.pojo.News;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Entity com.xtu.news.pojo.News
 */
@Mapper
@Repository
public interface NewsMapper extends BaseMapper<News> {



    //获得所有文章
    Page<News> getAll(@Param("page") Page<News> page);
    //关键词模糊查询
    Page<News> getNewsByKey(@Param("page") Page<News> page,@Param("keyWord") String keyWord);
    //    获得新闻所有分类
    List<String> getAllNewsType();
    //    获得文章所有领域
    List<String> getAllNewsDept();
    //    获得文章所有时间
    List<Integer> getAllNewsYear();
    //    通过关键词模糊查询所有文章
    //    根据不同标签进行筛选,采取动态sql  Location:搜索位置 time :搜索时间 type:搜索类型
    Page<News> getNewsByTags(@Param("page") Page<News> page,@Param("keyWord") String keyWord,
                                    @Param("location")  String location ,@Param("time") Integer time,
                                    @Param("type") String type,@Param("dept") String dept

    );






}




