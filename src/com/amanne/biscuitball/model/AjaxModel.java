package com.amanne.biscuitball.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.amanne.biscuitball.mybatis.CityDTO;
import com.amanne.biscuitball.mybatis.ICourtDAO;
import com.amanne.biscuitball.mybatis.ICrewDAO;
import com.amanne.biscuitball.mybatis.IRegionDAO;
import com.amanne.biscuitball.mybatis.IUserDAO;

@Service
public class AjaxModel
{
	@Autowired
	private SqlSession sqlSession;
	
	public ArrayList<CityDTO> getCityList(String regionCode)
	{
		IRegionDAO dao = sqlSession.getMapper(IRegionDAO.class);
		return dao.getCityList(regionCode);
	}
	
	public int checkEmail(String email)
	{
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		return dao.checkEmail(email);
	}
	
	public int checkTel(String tel)
	{
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		return dao.checkTelephone(tel);
	}
	
	public int checkNickname(String nickname)
	{
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		return dao.checkUserNickname(nickname);
	}
	
	public int checkCourtName(String courtCode, String courtName)
	{
		ICourtDAO dao = sqlSession.getMapper(ICourtDAO.class);
		return dao.checkCourtName(courtCode, courtName);
	}
	
	public int checkCrewName(String crewName)
	{
		ICrewDAO dao = sqlSession.getMapper(ICrewDAO.class);
		return dao.checkCrewName(crewName);
	}
}
