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
	
	@RequestMapping("/party/**")
	public String playHome()
	{
		HttpSession session = request.getSession();
				
		if (session != null)
		{
			System.out.println(session +"당근을 흔들어주세요");
			return "/play/PlayParty";
		}
		else 
		{
			return "/login";
		}
	}
}
