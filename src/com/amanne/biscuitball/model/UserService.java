package com.amanne.biscuitball.model;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.amanne.biscuitball.mybatis.IRegionDAO;
import com.amanne.biscuitball.mybatis.IUserDAO;
import com.amanne.biscuitball.mybatis.RegionDTO;
import com.amanne.biscuitball.mybatis.UserDTO;

public class UserService {

	@Autowired
	private SqlSession sqlSession;

	// 중복 아이디 체크
	public int checkEmail(String email) {

		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		System.out.println(dao.checkEmail(email));
		return dao.checkEmail(email);
	}
}

