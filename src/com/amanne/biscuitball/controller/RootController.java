package com.amanne.biscuitball.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class RootController
{
	// login Form 불러옴
	@RequestMapping("/login")
	public String login()
	{
		return "/login/Login";
	}
	
	// 회원가입 Form 불러옴
	@RequestMapping("/signup")
	public String signUp()
	{
		return "/signup/User_Signup";
	}
	
	// 비밀번호 재설정 Form 불러옴
	@RequestMapping("/passwordreset")
	public String passwordReset()
	{
		return "/login/User_PasswordReset";
	}
	
	
}
