package com.amanne.biscuitball.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.amanne.biscuitball.mybatis.IUserDAO;
import com.amanne.biscuitball.mybatis.UserDTO;

@Service
public class MypageModel
{
   @Autowired
   private SqlSession sqlSession;
   
   public void myPage(ModelAndView modelAndView, HttpServletRequest request)   // 회원정보 조회
   {
      // 요청 데이터 수신
      HttpSession session = request.getSession();
      UserInfo userInfo = (UserInfo) session.getAttribute("userInfo");   
      
      // 작업객체생성
      IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
      
      // 작업준비
      UserDTO user = dao.getUser(userInfo.getUserAcctCode());

   
      System.out.println(user.getUserEmail());
      System.out.println(user.getUserPassword());
      System.out.println(user.getUserName());
      System.out.println(user.getUserBirthday());
      System.out.println(user.getUserGender());
      System.out.println(user.getUserHeight());
      System.out.println(user.getSelfEvaluationType());
      System.out.println(user.getUserCityCode());
      System.out.println(user.getUserTel());
      System.out.println(user.getUserPosition());
      System.out.println(user.getSnsSync());
   
      
      modelAndView.addObject("user", user);
      modelAndView.setViewName("/mypage/MyPage");      
   

   }
}