package com.amanne.biscuitball.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/play")
public class PlayController
{

	@Autowired
	private HttpServletRequest request;
	
	
	// 파티 선택으로 이동
	@RequestMapping(value="/party/**", method=RequestMethod.GET)
	public String playHome()
	{
		
		return "/play/PlayParty";
	}
	
	// 파티 선택 -> 빠농/함농 선택으로 이동
	@RequestMapping("/mode/**")
	public String playMode()
	{
		return "/play/PlaySelect";
	}
	
	// 파티 만들기 팝업(경로만 이어놨습니다....)
	@RequestMapping("party/create")
	public String playPartyCreate(Model model)
	{
		return "/play/PlayParty_pu01";
	}
	
	// 함께농구로 이동
	@RequestMapping("/mode/together/**")
	public String togetherPlay()
	{
		return "/play/PlayTogether";
	}
	
}
