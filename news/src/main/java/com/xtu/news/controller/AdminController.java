package com.xtu.news.controller;

import com.xtu.news.pojo.Admin;
import com.xtu.news.pojo.News;
import com.xtu.news.pojo.Search;
import com.xtu.news.service.impl.AdminServiceImpl;
import com.xtu.news.service.impl.NewsServiceImpl;
import com.xtu.news.utils.JwtUtils;
import com.xtu.news.utils.ResultUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.jasypt.encryption.StringEncryptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/**
* 管理员所用到的所有接口，除了登录意外，所有的接口都需要在head设置Authorization属性，内容为Token
*/
@Slf4j
@Api(tags="管理员相关操作")
@RestController
public class AdminController {
    //分别注入普通用户的service和管理员的service
    @Autowired
    NewsServiceImpl newsService;
    @Autowired
    AdminServiceImpl adminService;
    //用来给管理员账号加密解密
    @Resource
    private StringEncryptor stringEncryptor;

    //管理员登录，这里不需要设置头部Authorization属性，传入的值为一个管理员对象，对象内属性包括{adminName(String类型),adminPassword(String类型)}
    @ApiOperation(value = "管理员登陆", notes = "不需要token")
    @ApiImplicitParam(name = "admin", value = "管理员实体类", paramType = "body", dataType = "Admin")
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ResultUtil doLogin(@RequestBody Admin admin, HttpServletRequest request, HttpServletResponse response) throws Exception {
        UsernamePasswordToken token = new UsernamePasswordToken(admin.getAdminName(), admin.getAdminPassword());
        System.out.println(admin);
        System.out.println("------------"+token);
        try {

            Admin adminObj = adminService.getAdminByName(admin.getAdminName());
            //密码解密
            String adminPassword=adminObj.getAdminPassword();
            //得到的解密密码
            String decryptAdminPassword = stringEncryptor.decrypt(adminPassword);
            if (adminObj == null) {
                return new ResultUtil(false, "用户不存在",401);
            }
            if (!decryptAdminPassword.equals(admin.getAdminPassword())) {
                return new ResultUtil(false, "密码错误",401);
            }
            JwtUtils jwtUtil = new JwtUtils();
            Map<String, Object> chaim = new HashMap<>();
            chaim.put("adminName", admin.getAdminName());
            //三个小时内，token失效
            String jwtToken = jwtUtil.encode(admin.getAdminName(), 3*60 * 1000, chaim);

            return new ResultUtil(true,"登陆成功",jwtToken,200);
        } catch (UnknownAccountException e) {
            return new ResultUtil(false, "用户不存在2",400);
        } catch (IncorrectCredentialsException e) {
            return new ResultUtil(false, "密码不正确2",400);
        }
    }
    //管理员获取所有文章，需要token，且返回一个list集合
    @ApiOperation(value = "管理员获得所有文章", notes = "需要token,不需要传值，且当前数据未分页")
    @RequestMapping(value = "admin/news",method = RequestMethod.GET)
    public ResultUtil getALLNews(){

        List<News> list = newsService.list();
        return new ResultUtil(true,"查询所有文章成功了",list,200);

    }
    //管理员传入一个封装的搜索对象，对象为Search封装的对象
    @ApiOperation(value = "管理员传入关键词和搜索对象集合，从而实现分页查找", notes = "需要token")
    @ApiImplicitParam(name = "search", value = "搜索封装实体类。包括currentPage（当前页码）:int类型，" +
            "pageSize（页面大小）int类型。keyWords（模糊查询的关键字，可以为空，为空时是无条件搜寻）String类型。location（搜索位置：后端写死规定了只有三种：不限，标题，内容。可以为空！），" +
            "newsDept（过滤标签体的部门，可以为空）String类型。newsTitle（过滤标签体的标题，可以为空）String类型。newsType（过滤标签体的类型，可以为空）" +
            "。year（过滤标签体的年份，可以为空）Integer类型",
            paramType = "body", dataType = "Search")
    @RequestMapping(value = "admin/newsPage",method = RequestMethod.POST)
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
    //管理员添加文章，需要传入token，且添加的对象不需要传入id
    @ApiOperation(value = "管理员添加文章", notes = "需要token，传入的实体类对象中不需要传入ID")
    @ApiImplicitParam(name = "news", value = "文章实体类", paramType = "body", dataType = "News")
    @RequestMapping(value="admin/news",method = RequestMethod.POST)
    public ResultUtil saveNews(@RequestBody News news) {

        boolean save = newsService.save(news);
        return  new ResultUtil(save,"添加文章成功了",200);
    }
    //管理员更新文章，需要传入token，传入一个对象，且更新的对象需要传入id
    @ApiOperation(value = "管理员更新文章", notes = "需要token，传入的实体类对象中需要传入ID")
    @ApiImplicitParam(name = "news", value = "文章实体类", paramType = "body", dataType = "News")
    @RequestMapping(value="admin/news",method = RequestMethod.PUT)
    public ResultUtil updateNews(@RequestBody News news) {
        boolean update = newsService.updateById(news);
        return  new ResultUtil(update,"更新文章成功了",200);
    }
    //管理员删除文章，传入id，需要token
    @ApiOperation(value = "管理员删除文章", notes = "需要token，需要文章ID")
    @ApiImplicitParam(name = "id", value = "文章ID")
    @RequestMapping(value="admin/news",method = RequestMethod.DELETE)
    public ResultUtil deleteNews(@RequestParam("id") Integer id) {
        boolean remove = newsService.removeById(id);
        return  new ResultUtil(remove,"删除文章成功了",200);
    }
    //管理员更新账户，传入一个Admin对象，且需要传入id。但是更新账号后token不会改变，需要前端重新强制返回登录界面，登陆后强制刷新token
    @ApiOperation(value = "管理员更新账号", notes = "需要token，需要管理员ID")
    @ApiImplicitParam(name = "admin", value = "文章实体类", paramType = "body", dataType = "Admin")
    @RequestMapping(value="admin/account",method = RequestMethod.PUT)
    public ResultUtil updateAdmin(@RequestBody Admin admin,HttpServletRequest httpServletRequest) {
        //用户密码加密
        String adminPassword = admin.getAdminPassword();
        adminPassword = stringEncryptor.encrypt(adminPassword);
        admin.setAdminPassword(adminPassword);
        boolean update = adminService.updateById(admin);
        JwtUtils jwtUtil = new JwtUtils();
        Map<String, Object> chaim = new HashMap<>();
        return  update==true?
                new ResultUtil(true,"更新账号成功了",401)
                : new ResultUtil(false,"更新账号失败了",200)
                ;
    }
    //不会刷新token，该接口，嗯，好像。。。建议将其打入冷宫，不要使用！！！！！！！！！！！！！
    @ApiOperation(value = "管理员登出账号", notes = "需要token，需要注意，这里并不会注销token，该接口建议不要使用")
    @RequestMapping(value = "/admin/logout",method = RequestMethod.GET)
    public ResultUtil logout(HttpServletRequest request) {
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        System.out.println(subject);
        return new ResultUtil(true,"退出登陆成功",200);


    }

}
