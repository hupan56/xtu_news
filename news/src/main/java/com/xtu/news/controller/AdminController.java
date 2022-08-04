package com.xtu.news.controller;

import com.xtu.news.pojo.Admin;
import com.xtu.news.pojo.News;
import com.xtu.news.pojo.Search;
import com.xtu.news.service.impl.AdminServiceImpl;
import com.xtu.news.service.impl.NewsServiceImpl;
import com.xtu.news.utils.JwtUtils;
import com.xtu.news.utils.ResultUtil;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class AdminController {
    @Autowired
    NewsServiceImpl newsService;

    @Autowired
    AdminServiceImpl adminService;



    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ResultUtil doLogin(@RequestBody Admin admin, HttpServletRequest request, HttpServletResponse response) throws Exception {
        UsernamePasswordToken token = new UsernamePasswordToken(admin.getAdminName(), admin.getAdminPassword());
        System.out.println(admin);
        System.out.println("------------"+token);
        try {
            Admin adminObj = adminService.getAdminByName(admin.getAdminName());
            if (adminObj == null) {
                return new ResultUtil(false, "用户不存在",401);
            }
            if (!adminObj.getAdminPassword().equals(admin.getAdminPassword())) {
                return new ResultUtil(false, "密码错误",401);
            }
            JwtUtils jwtUtil = new JwtUtils();
            Map<String, Object> chaim = new HashMap<>();
            chaim.put("adminName", admin.getAdminName());
            String jwtToken = jwtUtil.encode(admin.getAdminName(), 3*60* 60 * 1000, chaim);

            return new ResultUtil(true,"登陆成功",jwtToken,200);
        } catch (UnknownAccountException e) {
            return new ResultUtil(false, "用户不存在2",400);
        } catch (IncorrectCredentialsException e) {
            return new ResultUtil(false, "密码不正确2",400);
        }
    }

    @RequestMapping(value = "admin/news",method = RequestMethod.GET)
    public ResultUtil getALLNews(){

        List<News> list = newsService.list();
        return new ResultUtil(true,"查询所有文章成功了",list,200);

    }
    @RequestMapping(value = "admin/newsPage",method = RequestMethod.GET)
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
    @RequestMapping(value="admin/news",method = RequestMethod.POST)
    public ResultUtil saveNews(@RequestBody News news) {

        boolean save = newsService.save(news);
        return  new ResultUtil(save,"添加文章成功了",200);
    }

    @RequestMapping(value="admin/news",method = RequestMethod.PUT)
    public ResultUtil updateNews(@RequestBody News news) {

        boolean update = newsService.updateById(news);
        return  new ResultUtil(update,"更新文章成功了",200);
    }
    @RequestMapping(value="admin/news",method = RequestMethod.DELETE)
    public ResultUtil deleteNews(@RequestParam("id") Integer id) {
        boolean remove = newsService.removeById(id);
        return  new ResultUtil(remove,"删除文章成功了",200);
    }

    @RequestMapping(value="admin/account",method = RequestMethod.PUT)
    public ResultUtil updateAdmin(@RequestBody Admin admin) {

        boolean update = adminService.updateById(admin);
        JwtUtils jwtUtil = new JwtUtils();
        Map<String, Object> chaim = new HashMap<>();
        chaim.put("adminName", admin.getAdminName());
        chaim.put("adminName", admin.getAdminPassword());
        String jwtToken = jwtUtil.encode(admin.getAdminName(), 3*60* 60 * 1000, chaim);
        return  new ResultUtil(update,"更新账号成功了,请注意新的token",jwtToken,200);
    }
    @RequestMapping(value = "/logout",method = RequestMethod.GET)
    public ResultUtil logout(HttpServletRequest request) {
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        System.out.println(subject);
        return new ResultUtil(true,"退出登陆成功",200);


    }

}
