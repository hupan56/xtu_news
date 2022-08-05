package com.xtu.news.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

/**
 * 封装的搜索结果对象，即传过来的对象格式
* */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Search {
    private  String keyWords;
    private String location;
    /**
     * 新闻标题
     */
    private String newsTitle;
    /**
     * 新闻类型
     */
    private String newsType;

    /**
     * 新闻发布部门
     */
    private String newsDept;

    /**
     * 新闻发布时间
     */
    private Integer year;

    private int currentPage;

    private int pageSize;
}
