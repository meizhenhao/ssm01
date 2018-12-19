package com.ssm.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.bind.annotation.ResourceMapping;

import com.ssm.pojo.User;
import com.ssm.service.UserServiceInterface;

@Controller
public class UserController {
	
	@Autowired
	UserServiceInterface userService;
	
	private final static Log Logger = LogFactory.getLog(UserController.class);
	
	@RequestMapping("user/login")
	public String userLogin(@ModelAttribute("user") User user , Model model){
		
		if(!userService.findUserByNameAndPass(user)){
			Logger.info("登录失败！");
			model.addAttribute("errorMessage", "登录名或者密码错误！");
			return "login";
		}
		
		Logger.info("登录成功！");
		return "main";
	}
	
	@RequestMapping("/user/register")
	public String userRegister(@ModelAttribute("user") User user){
		
		if(!userService.addUser(user)){
			Logger.info("注册失败！");
			return "register";
		}
		
		Logger.info("注册成功！");
		return "login";
	}
	
	
	
}
