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




    Page<News> getAll(@Param("page") Page<News> page);


    Page<News> getNewsByKey(@Param("page") Page<News> page,@Param("keyWord") String keyWord);
//
//
//    //    获得新闻所有分类
//    List<String> getNewsType();
//    //    获得文章所有领域
//    List<String> getAllArticleField();
//    //    获得文章所有时间
//    List<Integer> getAllArticleTime();
//    //    通过关键词模糊查询所有文章

//
//    //    根据不同标签进行筛选,采取动态sql  Location:搜索位置 time :搜索时间 type:搜索类型
    Page<News> getNewsByTags(@Param("page") Page<News> page,@Param("keyWord") String keyWord,
                                    @Param("location")  String location ,@Param("time") Integer time,
                                    @Param("type") String type,@Param("dept") String dept

    );
//
////    根据文章不同的分类返回信息
////     Page<Article> getArticlesBySource(@Param("page") Page<Article> page,@Param("source") String source);
//
//    //根据id删除文章
//    int deleteByArticleId(Integer id);
//
//
//    @Override
//    int insert(News entity);





}




