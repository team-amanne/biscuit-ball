package com.amanne.biscuitball.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.amanne.biscuitball.model.LoginModel;
import com.amanne.biscuitball.model.SignUpModel;
import com.amanne.biscuitball.model.UserInfo;
import com.amanne.biscuitball.mybatis.LoginDTO;
import org.springframework.web.bind.annotation.RequestMethod;

import com.amanne.biscuitball.mybatis.IRegionDAO;
import com.amanne.biscuitball.mybatis.IUserDAO;
import com.amanne.biscuitball.mybatis.UserDTO;

@Controller
@RequestMapping("/")
@SessionAttributes({ "userInfo", "adminInfo" })
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
	@RequestMapping("/login.do")
	public String loginAction(Model model, LoginDTO dto)
	{
		dto.setIp(request.getRemoteAddr());

		UserInfo adminInfo = login.adminlogin(dto);

		if (adminInfo != null)
		{
			model.addAttribute("adminInfo", adminInfo);

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

					return "redirect:/";
				}
			} else
			{
				return "redirect:/login";
			}
		}

	}

	// 회원가입 Form 불러옴
	@RequestMapping("/signup/**")
	public String signUpForm(Model model)
	{
		model.addAttribute("regionList", signUp.signUpUserForm());

		return "/signup/User_Signup";
	}

	// 회원가입 액션
	@RequestMapping(value = "/signup.do", method = RequestMethod.POST)
	public String signUp(UserDTO user)
	{
		System.out.println("1 : " + user.getUserEmail());
		System.out.println("2 : " + user.getUserPassword());
		System.out.println("3 : " + user.getUserName());
		System.out.println("4 : " + user.getUserNickname());
		System.out.println("5 : " + user.getUserBirthday());
		System.out.println("6 : " + user.getUserGenderCode());
		System.out.println("7 : " + user.getUserHeight());
		System.out.println("8 : " + user.getSelfEvaluationType());
		System.out.println("9 : " + user.getUserCityCode());
		System.out.println("10 : " + user.getUserTel());
		System.out.println("11 : " + user.getUserPositionCode());
		System.out.println("12 : " + user.getSmsReceive());
		
		return signUp.signUpUser(user);
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
