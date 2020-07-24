package com.amanne.biscuitball.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.amanne.biscuitball.model.PartyCreateModel;
import com.amanne.biscuitball.model.UserInfo;
import com.amanne.biscuitball.mybatis.UserDTO;

@Controller
@RequestMapping("/play")
public class PlayController
{

	@Autowired
	private HttpServletRequest request;
	
	@Autowired
	private PartyCreateModel partyCreate;
	
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
	
	// 파티 만들기 팝업
	@RequestMapping("party/create")
	public String playPartyCreate(Model model, UserDTO userDto)
	{
		HttpSession session = request.getSession();
		UserInfo userInfo = (UserInfo)session.getAttribute("userInfo");
	
		model.addAttribute("userDto", userDto);
		return "/play/PlayParty_pu01";
	}
	
	
}
