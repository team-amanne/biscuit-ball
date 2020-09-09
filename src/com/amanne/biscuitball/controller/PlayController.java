package com.amanne.biscuitball.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.amanne.biscuitball.model.CourtModel;
import com.amanne.biscuitball.model.MypageModel;
import com.amanne.biscuitball.model.PlayModel;
import com.amanne.biscuitball.model.UserInfo;
import com.amanne.biscuitball.mybatis.CourtDTO;
import com.amanne.biscuitball.mybatis.MeetingDTO;
import com.amanne.biscuitball.mybatis.MeetingMemberDTO;
import com.amanne.biscuitball.mybatis.RegionDTO;
import com.amanne.biscuitball.mybatis.UserDTO;


@Controller
@RequestMapping("/play")
public class PlayController
{

	@Autowired
	private PlayModel playModel;
	
	@Autowired
	private HttpServletRequest request;
	
	@Autowired
	private CourtModel courtModel;
	
	
	// 파티 선택으로 이동
	@RequestMapping(value="/party")
	public String playHome()
	{
	   return "/play/PlayParty";
	}
	
	// 파티 선택 -> 빠농/함농 선택으로 이동
	@RequestMapping("/mode")
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
	
	
	// 빠른농구 
	@RequestMapping("mode/speed")
	public String playspeed(Model model)
	{
		// 빠른농구 도시
		ArrayList<RegionDTO> regionList = playModel.regionPrint();
		model.addAttribute("regionList", regionList);
	
		return "/play/PlaySpeed";
	}
	 /*
	// 빠른농구 개설
	@RequestMapping(value="/meeting/create", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView playCreateMeeting(ModelAndView modelAndView, HttpServletRequest request)
	{
		playModel.playUserInfo(modelAndView, request);
		return  modelAndView;
	}
	 */
	 
	// 빠른농구 개설
	@RequestMapping(value="/meeting/create", method = {RequestMethod.GET, RequestMethod.POST})
	public String playCreateMeeting(Model model)
	{
		HttpSession session = request.getSession();
		UserInfo userInfo = (UserInfo)session.getAttribute("userInfo");
		
		UserDTO userDto = playModel.playUserInfo(userInfo);
		 
		model.addAttribute("userDto", userDto);
		 
		return  "/play/PlayCreateMeeting";
	}
	  
	@RequestMapping(value="/meeting/create/select", method = {RequestMethod.GET, RequestMethod.POST})
	public String playCourtSearch()
	{	   
		return  "/play/PlaySpeed_pu02";
	}
	 
	 
	// 빠른농구 참여
	
	
	 
	// 함께농구로 이동
	@RequestMapping("/mode/together/**")
	public String togetherPlay(Model model)
	{
		// 광역시도 정보 랜더링
		ArrayList<RegionDTO> regionList= playModel.regionPrint();
		model.addAttribute("regionList", regionList);
		
		// 유저 홈코트 정보 불러오기
		HttpSession session = request.getSession();
		UserInfo userInfo = (UserInfo)session.getAttribute("userInfo");
		
		if (userInfo != null)
		{
			UserDTO userDto =  playModel.userHomeCourt(userInfo.getUserAcctCode());
			System.out.println(userDto.getUserCourtCode());
			model.addAttribute("userDto", userDto);
		}
		else
		{
			return "/login";
		}
		
		return "/play/PlayTogetherSelect";
	    
	}
	 
	 // 함께농구 개설 및 미팅 아티클
	 @RequestMapping("/meeting/{meeting_code}")
	 public String MeetingArticle(Model model, @PathVariable String meeting_code)
	 {
		 // 함께농구 개설
		if (meeting_code.equals("createfull"))
		{
			 // 광역시도 정보 랜더링
			ArrayList<RegionDTO> regionList= playModel.regionPrint();
			model.addAttribute("regionList", regionList);
			
			HttpSession session = request.getSession();
			UserInfo userInfo = (UserInfo)session.getAttribute("userInfo");
			
			UserDTO userDto = playModel.playUserInfo(userInfo);
			
			model.addAttribute("userDto",userDto);
			
			return "/play/PlayCreateMeetingTogether";
		}
		else
		{
			HttpSession session =  request.getSession();
			UserInfo userinfo = (UserInfo)session.getAttribute("userInfo");
	
			MeetingDTO meetingdto = playModel.getMeetingList(meeting_code);
			CourtDTO courtdto = courtModel.getCourt(meetingdto.getCourtRegistrationCode(), userinfo);
			
			ArrayList<MeetingMemberDTO> memberlist = meetingdto.getMeetingMemberList();
			
			ArrayList<UserDTO> meetingmemberlist= new ArrayList<UserDTO>();
			
			meetingmemberlist = playModel.getMemberLIst(memberlist);	
			
			model.addAttribute("meetingdto", meetingdto);
			model.addAttribute("courtdto", courtdto);
			model.addAttribute("memberlist", meetingmemberlist);
			model.addAttribute("userInfo", userinfo);
			
			return "/play/MeetingTogetherArticle";
		}
	}
	
	 @RequestMapping("/meeting/createcomplete")
   public String MeetingArticle(Model model, MeetingDTO meetingDTO, MeetingMemberDTO meetingMemberDTO)
   {
	   
	   String view = "redirect:/play/meeting/";
   
	   String result = playModel.createMeeting(meetingDTO, meetingMemberDTO);
	   view = view + result; 
	   return view;
	   
	}
	
	// 모임 참가
	@RequestMapping("/meeting/{meeting_code}/join")
	public String joinMeeting(Model model, @PathVariable("meeting_code") String meetingCode, @RequestParam("ballExistOrNot") String ballExistOrNot)
	{
		UserInfo info = (UserInfo)request.getSession().getAttribute("userInfo");
		
		playModel.joinMeeting(meetingCode, info.getUserAcctCode(), ballExistOrNot);
		
		return "redirect:/play/meeting/" + meetingCode;
	}
	
	// 모임취소
	@RequestMapping("/meeting/{meeting_code}/joincancel")
	public String joinMeeting(Model model, @PathVariable("meeting_code") String meetingCode)
	{
		UserInfo info = (UserInfo)request.getSession().getAttribute("userInfo");
		System.out.println("취소1");
		
		playModel.cancelJoinMeeting(meetingCode, info.getUserAcctCode());
		/*
		playModel.joinMeeting(meetingCode, info.getUserAcctCode(), ballExistOrNot);
		 */
		System.out.println("취소4");
		return "redirect:/play/meeting/" + meetingCode;
	}
  
	
	
	@RequestMapping("/meeting/manage/list")
	public String meetingList()
	{
		String view = null;
		
		view = "/meeting/MeetingList";
		
		return view;
	}
	
	@RequestMapping("/meeting/manage/playlog")
	public String meetingPlaylogListInput()
	{
		String view = null;
		
		view = "/meeting/MeetingPlaylogList";
		
		return view;
	}
	
	// 미입력 플레이로그
	@RequestMapping("/meeting/manage/playlog/{meeting_code}")
	public String meetingPlaylogListInput(Model model, @PathVariable("meeting_code") String meeting_code)
	{
		String view = null;
		
		//model.addAttribute("regions", courtModel.getRegionList());
		
		HttpSession session = request.getSession();
		UserInfo userinfo = (UserInfo)session.getAttribute("userInfo");
		
		MeetingDTO meetingdto = playModel.getMeetingList(meeting_code);
		CourtDTO courtdto = courtModel.getCourt(meetingdto.getCourtRegistrationCode(), userinfo);
		System.out.println(userinfo.getTierName());
		ArrayList<MeetingMemberDTO>  memberlist = meetingdto.getMeetingMemberList();
		
		ArrayList<UserDTO> meetingmemberlist= new ArrayList<UserDTO>();
		
		meetingmemberlist = playModel.getMemberLIst(memberlist);		
		model.addAttribute("meetingdto", meetingdto);
		model.addAttribute("courtdto", courtdto);
		model.addAttribute("memberlist", meetingmemberlist);
		model.addAttribute("userinfo", userinfo);

		
		view = "/meeting/MeetingPlaylogInput";
		
		return view;
	}
	
}