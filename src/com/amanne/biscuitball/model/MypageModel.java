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
	
	public void userDTOCodeChange(UserDTO user)	// YES NO 코트로 변경
	{
		if(user.getSnsSync().equals("YES")) user.setSnsSync("ZU01");
		else user.setSnsSync("ZU02");
		
		if(user.getSmsReceive().equals("YES")) user.setSmsReceive("ZU01");
		else user.setSmsReceive("ZU02");
		
		if(user.getCityOpen().equals("YES")) user.setCityOpen("ZU01");
		else user.setCityOpen("ZU02");
		
		if(user.getAchvOpen().equals("YES")) user.setAchvOpen("ZU01");
		else user.setAchvOpen("ZU02");
		
		if(user.getGenderOpen().equals("YES")) user.setGenderOpen("ZU01");
		else user.setGenderOpen("ZU02");
		
		if(user.getCourtOpen().equals("YES")) user.setCourtOpen("ZU01");
		else user.setCourtOpen("ZU02");
		
		if(user.getPlaylogOpen().equals("YES")) user.setPlaylogOpen("ZU01");
		else user.setPlaylogOpen("ZU02");

	}
	
	public void myPage(ModelAndView modelAndView, HttpServletRequest request)	// 회원정보 조회
	{
		// 요청 데이터 수신
		HttpSession session = request.getSession();
		UserInfo userInfo = (UserInfo) session.getAttribute("userInfo");	
		
		// 작업객체생성
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		
		// 작업준비
		UserDTO user = dao.getUser(userInfo.getUserAcctCode());

		modelAndView.addObject("user", user);
		modelAndView.setViewName("/mypage/MyPage");		
	

	}
	
	public void updateUser(ModelAndView modelAndView, HttpServletRequest request)	// 회원정보 수정
	{
		// 요청 데이터 수신
		HttpSession session = request.getSession();
		UserInfo userInfo = (UserInfo) session.getAttribute("userInfo");	
		String userProfileTxt = (String)request.getParameter("userProfileTxt");

		// 작업객체생성
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		
		// 작업준비
		UserDTO user = dao.getUser(userInfo.getUserAcctCode());
		user.setUserProfileTxt(userProfileTxt);

		
		userDTOCodeChange(user);
		dao.updateUserProfile(user);
		
		user = dao.getUser(userInfo.getUserAcctCode());

		modelAndView.addObject("user", user);
		modelAndView.setViewName("/mypage/MyPage");		
	
		
	}
}
