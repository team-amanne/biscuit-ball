/*============================================
 	CourtController.java
 	생성일: 2020.07.24
 	최근수정일: 2020.07.24
=============================================*/

package com.amanne.biscuitball.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.amanne.biscuitball.model.CourtModel;
import com.amanne.biscuitball.model.UserInfo;
import com.amanne.biscuitball.mybatis.CourtDTO;

@Controller
@RequestMapping("/court")
public class CourtController
{
	@Autowired
	private CourtModel courtModel;
	
	@Autowired
	private HttpSession session;
	
	@RequestMapping("/{courtCode}")
	public String court(Model model, @PathVariable("courtCode") String courtCode )
	{
		String view = null;
		
		CourtDTO court = null;
		
		court = courtModel.getCourt(courtCode, (UserInfo)session.getAttribute("userInfo"));
		
		model.addAttribute("court", court);
		
		view = "/court/CourtPage";
		return view;
	}

	@RequestMapping("/{courtCode}/delete")
	public String courtDelete(Model model, @PathVariable("courtCode") String courtCode )
	{
		String view = null;
		
		
		return view;
	}
	
	@RequestMapping("/{courtCode}/deleteok")
	public String courtDeleteOk(Model model, @PathVariable("courtCode") String courtCode )
	{
		String view = null;
		
		
		return view;
	}
	
	@RequestMapping("/{courtCode}/name")
	public String courtName(Model model, @PathVariable("courtCode") String courtCode )
	{
		String view = null;
		
		
		return view;
	}
	
	@RequestMapping("/{courtCode}/review")
	public String courtReview(Model model, @PathVariable("courtCode") String courtCode )
	{
		String view = null;
		
		
		return view;
	}
	
	@RequestMapping("/register")
	public String courtRegister(Model model)
	{
		String view = null;
		
		model.addAttribute("regions", courtModel.getRegionList());
		
		view = "/court/CourtRegistration";
		return view;
	}

	@RequestMapping("/register/success")
	public String courtRegisterSuccess(Model model)
	{
		String view = null;
		
		
		return view;
	}
	
}

