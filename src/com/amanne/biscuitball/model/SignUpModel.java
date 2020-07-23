package com.amanne.biscuitball.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.amanne.biscuitball.mybatis.IRegionDAO;
import com.amanne.biscuitball.mybatis.IUserDAO;
import com.amanne.biscuitball.mybatis.RegionDTO;
import com.amanne.biscuitball.mybatis.UserDTO;

@Service
public class SignUpModel
{
	@Autowired
	private SqlSession sqlSession;
	
	public String signUpUser(UserDTO user)
	{
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);

		System.out.println(user.getUserName());
		
		dao.registerUser(user);	// 회원가입
		
		String result = user.getUserRegisteredDate();	// 처리 결과
		
		if(result.equals("1"))  // 회원가입성공
			return "redirect:/signup/User_SignupComplete";

		return "redirect:/";

	}
	
	public ArrayList<RegionDTO> signUpUserForm()
	{
		IRegionDAO dao = sqlSession.getMapper(IRegionDAO.class);
		
		return dao.getRegionList();				
	}
	
	
}
