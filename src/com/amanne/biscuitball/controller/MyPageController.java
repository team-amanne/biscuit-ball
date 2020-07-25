package com.amanne.biscuitball.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.amanne.biscuitball.model.MypageModel;
import com.amanne.biscuitball.model.UserInfo;
import com.amanne.biscuitball.mybatis.UserDTO;

@Controller
@RequestMapping("/mypage")
public class MyPageController
{

	@Autowired
	private MypageModel mypage;
<<<<<<< HEAD

	// 마이페이지 조회
	@RequestMapping("")
	public String createMyPage()
	{

		return "redirect:/mypage/myprofile";

=======
	
	// 마이페이지 조회
	@RequestMapping("/mypage")
	public ModelAndView createMyPage(ModelAndView modelAndView, HttpServletRequest request)
	{	
		mypage.myPage(modelAndView, request);
		return modelAndView;			
>>>>>>> branch 'master' of https://github.com/team-amanne/biscuit-ball.git
	}
<<<<<<< HEAD

	@RequestMapping(value = "/myprofile", method =
	{ RequestMethod.GET, RequestMethod.POST })
	public ModelAndView showMyPage(ModelAndView modelAndView, HttpServletRequest request)
	{

		mypage.myPage(modelAndView, request);
		return modelAndView;

	}

	@RequestMapping("/account")
	public String myInfo()
	{
		return "/mypage/MyInfo";
	}

	@RequestMapping("/achievement")
	public String achievementList()
	{
		return "/mypage/Achievement";
	}

	@RequestMapping("/friend")
	public String friend()
	{
		return "/mypage/Friend";
	}

	@RequestMapping("/userblock")
	public String userblock()
	{
		return "/mypage/Userblock";
=======
	
	@RequestMapping(value="/mypage/mypage", method = {RequestMethod.GET, RequestMethod.POST})
	public String showMyPage()
	{	
		return "/mypage/MyPage";		
>>>>>>> branch 'master' of https://github.com/team-amanne/biscuit-ball.git
	}
	
	
	
	/*
	 * 심판정보 버튼 미완성 
	 * 심판정보 버튼 미완성 
	 * 심판정보 버튼 미완성 
	 * 심판정보 버튼 미완성 
	 * 심판정보 버튼 미완성 
	 * 심판정보 버튼 미완성 
	 * 심판정보 버튼 미완성 
	 * 심판정보 버튼 미완성 
	 * 심판정보 버튼 미완성 
	 * 심판정보 버튼 미완성 
	 * 심판정보 버튼 미완성 
	 * 심판정보 버튼 미완성 
	 *  */
	@RequestMapping("/referee")
	public String referee()
	{
		return "";
	}
}
