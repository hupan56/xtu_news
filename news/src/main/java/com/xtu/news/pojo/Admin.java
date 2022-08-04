package com.xtu.news.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import lombok.Data;

/**
 * 
 * @TableName admin
 */
@TableName(value ="admin")
@Data
public class Admin implements Serializable {
    /**
     * 管理员id
     */
    @TableId
    private Integer id;

    /**
     * 管理员账号
     */
    private String adminName;

    /**
     * 管理员密码
     */
    private String adminPassword;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}