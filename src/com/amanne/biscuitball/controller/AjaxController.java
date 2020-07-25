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
		
		model.addAttribute("result", ajax.getCityList(regionCode));
		
		view = "/ajax/Check";
		return view;
	}
	
	@RequestMapping("/check/email")
	public String checkEmail(Model model, @RequestParam("email") String email)
	{
		String view = null;
		
		model.addAttribute("result", ajax.checkEmail(email));
		
		view = "/ajax/Check";
		return view;
	}
	
	@RequestMapping("/check/tel")
	public String checkTel(Model model, @RequestParam("tel") String tel)
	{
		String view = null;
		
		model.addAttribute("result", ajax.checkTel(tel));
		
		view = "/ajax/Check";
		return view;
	}
	
	@RequestMapping("/check/nickname")
	public String checkNickname(Model model, @RequestParam("nickname") String nickname)
	{
		String view = null;
		
		model.addAttribute("result", ajax.checkNickname(nickname));
		
		view = "/ajax/Check";
		return view;
	}
	
	@RequestMapping("/check/crewname")
	public String checkCrewName(Model model, @RequestParam("crewName") String crewName )
	{
		String view = null;
		
		model.addAttribute("result", ajax.checkCrewName(crewName));
		
		view = "/ajax/Check";
		return view;
	}
	
	@RequestMapping("/check/courtname")
	public String checkCourtName(Model model, @RequestParam("courtCode") String courtCode, @RequestParam("courtName") String courtName)
	{
		String view = null;
		
		model.addAttribute("result", ajax.checkCourtName(courtCode, courtName));
		
		view = "/ajax/Check";
		return view;
	}
	
	@RequestMapping("/courtlist")
	public String courtList(Model model, @RequestParam(required=false) String cityCode, @RequestParam(required=false) String regionCode)
	{
		String view = null;
		
		if(cityCode != null)
			model.addAttribute("result", ajax.getCourtListByCity(cityCode));
		else if(regionCode != null)
			model.addAttribute("result", ajax.getCourtListByRegion(regionCode));
		
		view = "/ajax/Check";
		return view;
	}
	
	@RequestMapping("/court")
	public String getCourt(Model model, String mapPositionX, String mapPositionY)
	{
		String view = null;
		
		model.addAttribute("result", ajax.getCourtCodeByPosition(mapPositionX, mapPositionY)); 
		
		view = "/ajax/Check";
		return view;
	}
}
