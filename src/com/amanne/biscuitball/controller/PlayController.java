package com.amanne.biscuitball.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/play")
public class PlayController
{
	
	@Autowired
	private HttpServletRequest request;
	
	
	// 파티 선택으로 이동
	@RequestMapping("/party/**")
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
	
}
