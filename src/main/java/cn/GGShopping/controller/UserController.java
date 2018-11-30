package cn.GGShopping.controller;

import cn.GGShopping.entity.User;
import cn.GGShopping.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;
    //主页面跳转
    @RequestMapping("index")
    public String index(){
        return "home";
    }
    //登录页面跳转
    @RequestMapping("login")
    public String login(){
            return "userLogin";
    }
    //注册页面跳转
    @RequestMapping("registered")
    public String registered(HttpSession session){
        session.invalidate();
        return "addUser";
    }
    //登录方法
    @RequestMapping("userLogin")
    public String selUser(String userName,String password,Model model){
        User us = userService.selUser(userName,password);
        if (us!=null){
            model.addAttribute("userName",userName);
            return "home";
        }else{
            return "error";
        }

    }
    //注销方法
    @RequestMapping("outLogin")
    public String outLogin(HttpSession seesion){
        //通过session.invalidate()方法来注销当前的session
        seesion.invalidate();
        return "home";
    }

    //用户个人信息
    @RequestMapping("userManagement")
    public String userManagement(HttpServletRequest request, Model model){
        String userName = request.getParameter("userName");
        User us2 = userService.userManagementService(userName);
        model.addAttribute("userManagement",us2);
        return "userManagement";
    }

    //修改用户信息
    @RequestMapping("updateUserManagement")
    public String updateUserManagement(HttpServletRequest request,Model model){
        String userName = request.getParameter("userName");
        String userAge = request.getParameter("age");
        String userSex = request.getParameter("sex");
        int i = userService.updateUserManagement(userName, userAge, userSex);
        User us2 = userService.userManagementService(userName);
        model.addAttribute("userManagement",us2);
        /*return "redirect:userManagement?userName="+userName;*/
        model.addAttribute("msg",i);
        return "userManagement";
    }
    @RequestMapping("toRegistered")
    public String toRegistered(String userName,String sex,String age,String password,Model model){
        int i = userService.toRegistered(userName, sex, age, password);
        model.addAttribute("SOrL",i);
        return "addUser";
    }
    //用户名验证是否重复
    //josn数据交互
    //@RequestBody：接受json数据并转换为pojo对象
    //@ResponseBody：响应json数据，把pojo对象转换成json数据并响应
    @RequestMapping("vUserName")
    @ResponseBody
    public User vUserName(HttpServletRequest request){
        String userName = request.getParameter("name");
        User us2 = userService.userManagementService(userName);
        return us2;
    }
}
