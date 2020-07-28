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
public class UserModel
{
	@Autowired
	private SqlSession sqlSession;
	
	public void getUserPage(ModelAndView modelAndView, HttpServletRequest request, String userCode)	// 회원정보 조회
	{
		// 요청 데이터 수신
		HttpSession session = request.getSession();
		
		// 작업객체생성
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		
		
		// 작업준비
		UserDTO user = dao.getUser(userCode);
		
		modelAndView.addObject("user", user);
		modelAndView.setViewName("/profile/UserProfile");		
	

	}
}
