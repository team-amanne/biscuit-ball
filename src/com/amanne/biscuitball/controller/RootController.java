package com.amanne.biscuitball.controller;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.amanne.biscuitball.model.LoginModel;
import com.amanne.biscuitball.model.UserInfo;
import com.amanne.biscuitball.mybatis.LoginDTO;

@Controller
@RequestMapping("/")
@SessionAttributes({"userInfo", "adminInfo"})
public class RootController
{
	
	@Autowired
	private LoginModel login;
	
	@Autowired
	private HttpServletRequest request;
	
	// login Form 불러옴
	@RequestMapping("/login")
	public String login()
	{
		return "/login/Login";
	}
	
	@RequestMapping("/login.do")
	public String loginAction(Model model, LoginDTO dto)
	{
		/*
		 * String email = dto.getEmail(); String pwd = dto.getPassword(); String ip =
		 * dto.getIp();
		 */
		dto.setIp(request.getRemoteAddr());
		
		UserInfo adminInfo = login.adminlogin(dto);
		
		if (adminInfo != null)
		{
			model.addAttribute("adminInfo", adminInfo);
			
			return "redirect:/";
		}
		else
		{
			UserInfo userInfo = login.userlogin(dto);
			
			if (userInfo != null)
			{
				String userStatus = userInfo.getUserStatus();
				
				if (userStatus.equals("정지"))
				{
					return "redirect:/login";
				}
				else
				{
					model.addAttribute("userInfo", userInfo);
					
					return "redirect:/";
				}
			}
			else
			{
				return "redirect:/login";
			}
		}
		
		
		
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
