package com.xtu.news.pojo;

import com.baomidou.mybatisplus.annotation.*;

import java.io.Serializable;
import java.sql.Date;

import lombok.Data;

/**
 * 
 * @TableName news
 */
@TableName(value ="news")
@Data
public class News implements Serializable {
    /**
     * 新闻id
     */
    @TableId(type = IdType.AUTO)
    private Integer id;

    /**
     * 新闻标题
     */
    private String newsTitle;

    /**
     * 新闻内容
     */
    private String newsContent;

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
    private Date newsTime;

    /**
     * 新闻删除标志
     */
    @TableLogic
    private Integer isDeleted;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}