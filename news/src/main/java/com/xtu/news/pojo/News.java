package com.xtu.news.pojo;

import com.baomidou.mybatisplus.annotation.*;

import java.io.Serializable;
import java.sql.Date;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * 
 * @TableName news
 */
@TableName(value ="news")
@Data
@ApiModel(value="News", description="新闻实体类")
public class News implements Serializable {
    /**
     * 新闻id
     */
    @TableId(type = IdType.AUTO)
    @ApiModelProperty(value="新闻id，主键自增，在更新新闻的时候需要传入id。添加新闻的时候不需要传入id,Integer类型", name="id", example="xzw")
    private Integer id;

    /**
     * 新闻标题
     */
    @ApiModelProperty(value="新闻标题", name="newsTitle", example="标题")
    private String newsTitle;

    /**
     * 新闻内容
     */
    @ApiModelProperty(value="新闻内容", name="newsContent", example="内容")
    private String newsContent;

    /**
     * 新闻类型
     */
    @ApiModelProperty(value="新闻类型", name="newsType", example="类型")
    private String newsType;

    /**
     * 新闻发布部门
     */
    @ApiModelProperty(value="新闻发布部门", name="newsDept", example="发表部门")
    private String newsDept;

    /**
     * 新闻发布时间
     */
    @ApiModelProperty(value="新闻发布时间，格式 2022-12-22", name="newsTime", example="2022-12-22",dataType = "Date")
    private Date newsTime;

    /**
     * 新闻删除标志
     */
    @TableLogic
    @ApiModelProperty(value="逻辑删除时间，不需要传入，默认为0", name="isDeleted")
    private Integer isDeleted;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}