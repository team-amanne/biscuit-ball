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
		
		if(courtCode != null)
		{			
			result = courtDao.getCourt(courtCode);
			list = courtDao.getCourtReviewList(courtCode, info != null ? info.getUserAcctCode() : null, 1, 5, "LIKE");
			result.setCourtReviewList(list);
		}
		
		return result;
	}
	
	public ArrayList<RegionDTO> getRegionList()
	{
		IRegionDAO dao = sqlSession.getMapper(IRegionDAO.class);
		return dao.getRegionList();
	}
	
	public String registerCourt(CourtDTO dto)
	{
		ICourtDAO courtDao = sqlSession.getMapper(ICourtDAO.class);
		int result = courtDao.registerCourt(dto);
		
		if(result > 0)
			return courtDao.getCourtByMapPosition(dto.getMapPositionX(), dto.getMapPositionY());
		else 
			return null;
		
	}
	
	public int registerCourtReview(CourtReviewDTO dto)
	{
		ICourtDAO courtDao = sqlSession.getMapper(ICourtDAO.class);
		courtDao.addCourtReview(dto);
		return Integer.parseInt(dto.getReturnValue());
		
	}
	
}
