package com.amanne.biscuitball.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.amanne.biscuitball.mybatis.CourtDTO;
import com.amanne.biscuitball.mybatis.CourtReviewDTO;
import com.amanne.biscuitball.mybatis.ICourtDAO;
import com.amanne.biscuitball.mybatis.IRegionDAO;
import com.amanne.biscuitball.mybatis.RegionDTO;

@Service
public class CourtModel
{
	@Autowired
	private SqlSession sqlSession;
	
	
	public CourtDTO getCourt(String courtCode, UserInfo info)
	{
		CourtDTO result = null;
		ICourtDAO courtDao = sqlSession.getMapper(ICourtDAO.class);
		ArrayList<CourtReviewDTO> list = null;
		
		result = courtDao.getCourt(courtCode);
		list = courtDao.getCourtReviewList(courtCode, info != null ? info.getUserAcctCode() : null, 1, 5, "LIKE");
		result.setCourtReviewList(list);
		
		return result;
	}
	
	public ArrayList<RegionDTO> getRegionList()
	{
		IRegionDAO dao = sqlSession.getMapper(IRegionDAO.class);
		return dao.getRegionList();
	}
	
}
