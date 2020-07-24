package com.amanne.biscuitball.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.amanne.biscuitball.model.AjaxModel;

@Controller
@RequestMapping("/ajax")
public class AjaxController
{
	@Autowired
	private AjaxModel ajax;
	
	@RequestMapping("/citylist")
	public String cityList(Model model, @RequestParam("regionCode") String regionCode)
	{
		String view = null;
		
		model.addAttribute("cityList", ajax.getCityList(regionCode));
		
		view = "/ajax/CityList";
		return view;
	}
}
