package com.amanne.biscuitball.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.amanne.biscuitball.mybatis.CityDTO;
import com.amanne.biscuitball.mybatis.IRegionDAO;

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
}
