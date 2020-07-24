package com.amanne.biscuitball.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;

import com.amanne.biscuitball.model.LoginModel;
import com.amanne.biscuitball.model.SignUpModel;
import com.amanne.biscuitball.model.UserInfo;
import com.amanne.biscuitball.mybatis.LoginDTO;
import org.springframework.web.bind.annotation.RequestMethod;

import com.amanne.biscuitball.mybatis.UserDTO;

@Controller
@RequestMapping("/")
public class RootController
{

	@Autowired
	private SignUpModel signUp;

	@Autowired
	private LoginModel login;
	
	@Autowired
	private HttpServletRequest request;

	// login Form 불러옴
	@RequestMapping("/login/**")
	public String login()
	{
		return "/login/Login";
	}

	// login Action 로그인 액션

	@RequestMapping("/logindo")
	public String loginAction(Model model, LoginDTO dto)
	{
		
		HttpSession session = request.getSession();
		
		dto.setIp(request.getRemoteAddr());

		UserInfo adminInfo = login.adminlogin(dto);

		if (adminInfo != null)
		{
			model.addAttribute("adminInfo", adminInfo);
			session.setAttribute("adminInfo", adminInfo);

			return "redirect:/";
		} else
		{
			UserInfo userInfo = login.userlogin(dto);

			if (userInfo != null)
			{
				String userStatus = userInfo.getUserStatus();

				if (userStatus.equals("정지"))
				{
					return "redirect:/login";
				} else
				{
					model.addAttribute("userInfo", userInfo);
					session.setAttribute("userInfo", userInfo);

					return "redirect:/";
				}
			} else
			{
				return "redirect:/login";
			}
		}

	}
	
	// 로그아웃
	@RequestMapping("/logout")
	public String logout()
	{
		HttpSession session = request.getSession();
		
		session.removeAttribute("userInfo");
		session.removeAttribute("adminInfo");
		session.invalidate();
		
		return "redirect:/";
	}

	// 회원가입 Form 불러옴
	@RequestMapping("/signup")
	public String signUpForm(Model model)
	{
		model.addAttribute("regionList", signUp.signUpUserForm());
		return "/signup/User_Signup";
	}

	// 회원가입 액션 
	@RequestMapping(value="/signupdo", method = {RequestMethod.GET, RequestMethod.POST})
	public String signUp(UserDTO user)
	{	
		return signUp.signUpUser(user);
	}
	
	// 회원가입 완료
	@RequestMapping(value="/signupcomplete", method = {RequestMethod.GET, RequestMethod.POST})
	public String signUpComplete()
	{	
		return "/signup/User_SignupComplete";
	}

	// 비밀번호 재설정 Form 불러옴
	@RequestMapping("/passwordreset")
	public String passwordReset()
	{
		return "/login/User_PasswordReset";
	}
	
	// 메인 페이지 띄우기
	@RequestMapping("/")
	public String main()
	{
		
		
		return "/base/Main";
	}

}
