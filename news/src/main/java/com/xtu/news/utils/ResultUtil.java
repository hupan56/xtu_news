package com.xtu.news.utils;

//import com.hp.article.shiro.JwtToken;

import lombok.Data;

/**
 * 封装的结果集对象
* */
@Data
public class ResultUtil {
    private Object data;
    private String message;
    private int code;
    private String  token;
    private boolean isSuccess;
   private ResultUtil(){
    }
    public ResultUtil( boolean isSuccess,String message, Object data,String token, int code){
        this.token=token;
        this.data=data;
        this.code=code;
        this.isSuccess=isSuccess;
        this.message=message;
    }
    public ResultUtil( boolean isSuccess,String message,String token, int code){
        this.token=token;
        this.data=data;
        this.code=code;
        this.isSuccess=isSuccess;
        this.message=message;
    }
    public ResultUtil( boolean isSuccess,String message, Object data, int code){
        this.data=data;
        this.code=code;
        this.message=message;
        this.isSuccess=isSuccess;
    }
    public ResultUtil(boolean isSuccess, String message, int code){
        this.data=data;
        this.code=code;
        this.message=message;
        this.isSuccess=isSuccess;
    }





}
