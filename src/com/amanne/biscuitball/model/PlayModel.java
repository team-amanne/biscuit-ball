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
public class PlayModel
{
	@Autowired
	private SqlSession sqlSession;
	
	// 광역시도 출력 메소드
	public ArrayList<RegionDTO> regionPrint()
	{
		ArrayList<RegionDTO> regionList = new ArrayList<RegionDTO>();
		
		IRegionDAO regionDao = sqlSession.getMapper(IRegionDAO.class);
		regionList=regionDao.getRegionList();
		
		return regionList;
	}
	
	// 특정 유저 홈코트
	public UserDTO userHomeCourt(String userAccountCode)
	{
		UserDTO userDto = new UserDTO();
		IUserDAO userDao = sqlSession.getMapper(IUserDAO.class);
		userDao.getUser(userAccountCode);
		
		return userDto;
	}
	
	// 유저 선택 조건 모임 가져오기

}
