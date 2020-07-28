package com.amanne.biscuitball.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.amanne.biscuitball.model.UserModel;


@Controller
@RequestMapping("/userpage")
public class UserPageController
{
	
	@Autowired
	private UserModel userModel;
	
	
	@RequestMapping("/{userCode}")
	public ModelAndView showUserPage(ModelAndView modelAndView,  HttpServletRequest request, @PathVariable("userCode") String userCode)
	{
		
		userModel.getUserPage(modelAndView, request, userCode);
		return modelAndView;
	}
	
	
	

}
