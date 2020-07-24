package com.amanne.biscuitball.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.amanne.biscuitball.model.UserService;

@Controller
@RequestMapping("/ajax")
public class AjaxController
{
	
	@Autowired
	private UserService service;

	@RequestMapping(value="/check/email", method = RequestMethod.GET)
	@ResponseBody
	public String idCheck(@RequestParam("email") String email, Model model) {
		System.out.println(email);
		System.out.println(service.checkEmail(email));
		
		model.addAttribute("check", service.checkEmail(email));
		
		return "AjaxCheck.jsp";
	}
}
