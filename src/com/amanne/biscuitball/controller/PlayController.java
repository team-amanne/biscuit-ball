package com.amanne.biscuitball.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.amanne.biscuitball.model.PlayModel;
import com.amanne.biscuitball.model.UserInfo;
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
   
   // 빠른농구 개설
   @RequestMapping(value="/meeting/create", method = {RequestMethod.GET, RequestMethod.POST})
   public ModelAndView playCreateMeeting(ModelAndView modelAndView, HttpServletRequest request)
   {
	   playModel.courtFounder(modelAndView, request);
	   return  modelAndView;
   }
    
   @RequestMapping(value="/meeting/create/select", method = {RequestMethod.GET, RequestMethod.POST})
   public String playCourtSearch()
   {	   
	   return  "/play/PlaySpeed_pu02";
   }
   
   
   // 빠른농구 참여
   @RequestMapping("meeting/**")
   public String playSpeedJoin()
   {
      return "/play/PlaySpeed_pu01";
   }
   
   
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
		  model.addAttribute("userDto", userDto);
	  }
	  else
	  {
		  return "/login";
	  }
	 
      return "/play/PlayTogetherSelect";
      
   }
   
}