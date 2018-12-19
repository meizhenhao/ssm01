package com.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.bind.annotation.ResourceMapping;

@Controller
public class IndexController {
	
	@RequestMapping("/index/login")
	public String login(){
		return "login";
	}
	
	@RequestMapping("/index/register")
	public String register(){
		return "register";
	}
	
	@RequestMapping("/showIndex")
	public String showIndex(){
		return "index";
	}
}
