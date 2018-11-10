package cn.GGShopping.controller;

import cn.GGShopping.entity.User;
import cn.GGShopping.service.UserService;
import com.sun.deploy.nativesandbox.comm.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("index")
    public String index(){
        return "home";
    }
    @RequestMapping("login")
    public String login(){
            return "userLogin";
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
}
