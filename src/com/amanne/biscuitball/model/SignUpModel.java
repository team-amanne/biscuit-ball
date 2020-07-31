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

		System.out.println(user.getUserTel());

		System.out.println(user.getUserEmail());
		System.out.println(user.getUserPassword());
		System.out.println(user.getUserName());
		System.out.println(user.getUserNickname());
		System.out.println(user.getUserBirthday());
		System.out.println(user.getUserGenderCode());
		System.out.println(user.getUserHeight());
		System.out.println(user.getSelfEvaluationType());
		System.out.println(user.getUserCityCode());
		System.out.println(user.getUserPositionCode());
		System.out.println(user.getSnsSync());
		
		
		
		dao.registerUser(user);	// 회원가입
		
		String result = user.getReturnValue();	// 처리 결과
		System.out.println(result);
		if(result.equals("1"))  // 회원가입성공
			return "redirect:/signupcomplete";
		
		return "redirect:/";

	}
	
	public ArrayList<RegionDTO> signUpUserForm()
	{
		IRegionDAO dao = sqlSession.getMapper(IRegionDAO.class);
		
		return dao.getRegionList();				
	}
	
	
}
