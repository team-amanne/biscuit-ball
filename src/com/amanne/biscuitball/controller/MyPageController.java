package com.amanne.biscuitball.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.amanne.biscuitball.model.MypageModel;
import com.amanne.biscuitball.model.UserInfo;
import com.amanne.biscuitball.mybatis.UserDTO;

@Controller
@RequestMapping("/mypage")
public class MyPageController
{
   
   @Autowired
   private MypageModel mypage;
   
   /*
   // 마이페이지 조회
   @RequestMapping("")
   public ModelAndView createMyPage(ModelAndView modelAndView, HttpServletRequest request)
   {   
      
      
      mypage.myPage(modelAndView, request);
      return modelAndView;   
      
      
   }
   */
   // 마이페이지 조회
   @RequestMapping("")
   public String createMyPage()
   {   

      return "redirect:/mypage/myprofile";   
      
      
   }
   
   @RequestMapping(value="/myprofile", method = {RequestMethod.GET, RequestMethod.POST})
   public ModelAndView showMyPage(ModelAndView modelAndView, HttpServletRequest request)
   {   
      
      mypage.myPage(modelAndView, request);
      return    modelAndView;

      
   }
   

}