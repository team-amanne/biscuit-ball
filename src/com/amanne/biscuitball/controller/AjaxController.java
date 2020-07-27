package com.amanne.biscuitball.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.amanne.biscuitball.model.AjaxModel;
import com.amanne.biscuitball.model.UserInfo;

@Controller
@RequestMapping("/ajax")
public class AjaxController
{
	@Autowired
	private AjaxModel ajax;
	@Autowired
	private HttpSession session;
	
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
	public String getCourt(Model model, @RequestParam(required=false) String mapPositionX, @RequestParam(required=false) String mapPositionY)
	{
		String view = null;
		
		model.addAttribute("result", ajax.getCourtCodeByPosition(mapPositionX, mapPositionY)); 
		
		view = "/ajax/Check";
		return view;
	}
	
	@RequestMapping("/court/{courtCode}/reviewlist")
	public String courtReviewList(Model model, @RequestParam(required=false) String page, @PathVariable String courtCode)
	{
		UserInfo info = (UserInfo)session.getAttribute("userInfo");
		model.addAttribute("result", ajax.getCourtReviewList(courtCode, info.getUserAcctCode()
				, page != null ? Integer.parseInt(page) : 1, "LIKE"));
		
		return "/ajax/Check";
	}
	
	@RequestMapping("/court/{courtCode}/reviewindex")
	public String courtReviewIndex(Model model, @RequestParam(required=false) String page, @PathVariable String courtCode)
	{
		model.addAttribute("result", ajax.getCourtReviewIndex(courtCode, page != null ? Integer.parseInt(page) : 1));
		return "/ajax/Check";
	}
	
	@RequestMapping("/court/{courtCode}/meetinglist/{meetingDate}")
	public String courtMeetingList(Model model, @RequestParam(required=false) String page, @PathVariable String courtCode, @PathVariable String meetingDate)
	{
		model.addAttribute("result", ajax.getCourtMeetingList(courtCode, meetingDate, page != null ? Integer.parseInt(page) : 1));
		return "/ajax/Check";
	}

	@RequestMapping("/court/{courtCode}/meetingindex/{meetingDate}")
	public String courtMeetingIndex(Model model, @RequestParam(required=false) String page, @PathVariable String courtCode, @PathVariable String meetingDate)
	{
		model.addAttribute("result", ajax.getCourtMeetingIndex(courtCode, meetingDate, page != null ? Integer.parseInt(page) : 1));
		return "/ajax/Check";
	}
	
	@RequestMapping("/court/{courtCode}/meetingcount/{meetingDate}")
	public String courtMeetingIndex(Model model, @PathVariable String courtCode, @PathVariable String meetingDate)
	{
		model.addAttribute("result", ajax.getCourtMeetingCount(courtCode, meetingDate));
		return "/ajax/Check";
	}
	
	@RequestMapping("/togethermeetinglist")
	public String togetherMeetingList(Model model, @RequestParam("courtRegistrationCode") String courtRegistrationCode, @RequestParam("meetingDate") String meetingDate, @RequestParam("meetingTypeCode") String meetingTypeCode, @RequestParam("start") int start, @RequestParam("end") int end)
	{
		String view = null;
		meetingDate=meetingDate.replace("+", " ");
		
		model.addAttribute("result", ajax.getMeetingListByTogetherPlay(courtRegistrationCode, meetingDate, meetingTypeCode, start, end));
		
		view = "/ajax/Check";
		return view;
	}
	
	@RequestMapping("/meetinglist/byregion")
	public String getMeetingListsByDate(Model model, @RequestParam("meetingDate") String meetingDate)
	{
		model.addAttribute("result", ajax.getMeetingListByRegion(meetingDate));
		return "/ajax/Check";
	}
}
