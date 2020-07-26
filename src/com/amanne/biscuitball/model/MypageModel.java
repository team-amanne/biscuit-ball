package com.amanne.biscuitball.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Case;
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
		
		// 작업객체생성
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);

		// 작업준비
		UserDTO user = dao.getUser(userInfo.getUserAcctCode());
		

		// 요청이 들어온 url 가져오기
		String oldUrl = request.getHeader("referer");
		for(int n=0; n<4; n++)
			oldUrl = oldUrl.substring(oldUrl.indexOf("/")+1, oldUrl.length());
		if(oldUrl.indexOf("court")!=-1)
			oldUrl = "court";

		switch (oldUrl)
		{
			case "mypage/myprofile":
			case "mypage/updateuser":
				// 유저 프로필  → 유저 자기소개수정
				String userProfileTxt = (String)request.getParameter("userProfileTxt");
								
				user.setUserProfileTxt(userProfileTxt);
				userDTOCodeChange(user);
				dao.updateUserProfile(user);
				
				user = dao.getUser(userInfo.getUserAcctCode());
	
				modelAndView.addObject("user", user);
				modelAndView.setViewName("/mypage/MyPage");	
			
				break;
				
			case "court":
				// 코트  → 내 코트 변경
				String updateUserCourtCode = (String)request.getParameter("userCourtCode");
				user.setUserCourtCode(updateUserCourtCode);
				userDTOCodeChange(user);
				dao.updateUserProfile(user);
				
				user = dao.getUser(userInfo.getUserAcctCode());

				modelAndView.setViewName("redirect:/court/" + user.getUserCourtCode());	
			
				break;
	
			default:
				break;
		}

		

		
			
	
		
	}
}
