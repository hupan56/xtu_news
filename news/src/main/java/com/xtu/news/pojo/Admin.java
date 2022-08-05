package com.xtu.news.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * 
 * @TableName admin
 */
@TableName(value ="admin")
@Data
@ApiModel(value="Admin", description="管理员实体类")
public class Admin implements Serializable {
    /**
     * 管理员id
     */
    @ApiModelProperty(value="管理员id，主键自增，在更新管理员的时候需要传入id。从0开始", name="id", example="0")
    @TableId(type = IdType.AUTO)
    private Integer id;

    /**
     * 管理员账号
     */
    @ApiModelProperty(value="管理员账号", name="adminName", example="admin")
    private String adminName;

    /**
     * 管理员密码
     */
    @ApiModelProperty(value="管理员密码,后端实现了加密解密，前端只需正常传入数据", name="adminPassword", example="123456")
    private String adminPassword;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}