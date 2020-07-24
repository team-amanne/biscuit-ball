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
	
	public void myPage(ModelAndView modelAndView, HttpServletRequest request)	// 회원정보 조회
	{
		// 요청 데이터 수신
		HttpSession session = request.getSession();
		UserInfo userInfo = (UserInfo) session.getAttribute("userInfo");	
		
		// 작업객체생성
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
	
		System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
		System.out.println(userInfo.getUserAcctCode() + "ㅁㅁ");
		System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
		
		// 작업준비
		UserDTO user = dao.getUser(userInfo.getUserAcctCode());

		if(user.getReturnValue().equals("1"))	// 요청이 정상처리되었을 때
		{
			modelAndView.addObject("user", user);
			modelAndView.setViewName("redirect:/mypage/mypage");		
		}	 
		
		modelAndView.setViewName("에러페이지로 가게 설정");
		return;

	}
}