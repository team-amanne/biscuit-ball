package com.amanne.biscuitball.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.amanne.biscuitball.mybatis.CourtDTO;
import com.amanne.biscuitball.mybatis.CourtNameDTO;
import com.amanne.biscuitball.mybatis.CourtReviewDTO;
import com.amanne.biscuitball.mybatis.ICourtDAO;
import com.amanne.biscuitball.mybatis.IRegionDAO;
import com.amanne.biscuitball.mybatis.RegionDTO;
import com.amanne.biscuitball.util.MyUtil;

@Service
public class CourtModel
{
	@Autowired
	private SqlSession sqlSession;
	@Autowired
	private MyUtil util;
	
	public CourtDTO getCourt(String courtCode, UserInfo info)
	{
		CourtDTO result = null;
		ICourtDAO courtDao = sqlSession.getMapper(ICourtDAO.class);
		ArrayList<CourtReviewDTO> list = null;
		
		if(courtCode != null)
		{			
			result = courtDao.getCourt(courtCode);
			list = courtDao.getCourtReviewList(courtCode, info != null ? info.getUserAcctCode() : null, 1, 5, "LIKE");
			for(CourtReviewDTO dto : list)
				dto.setCourtReviewContent(dto.getCourtReviewContent().replaceAll("\\n", "<br>"));
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
	
	public int removeCourtReview(String reviewCode)
	{
		ICourtDAO courtDao = sqlSession.getMapper(ICourtDAO.class);
		return courtDao.removeCourtReview(reviewCode);
	}
	
	public int registerCourtName(CourtNameDTO dto)
	{
		ICourtDAO courtDao = sqlSession.getMapper(ICourtDAO.class);
		return courtDao.addCourtName(dto);
	}
	
	public String getCourtNameIndex(String courtCode, String url, int currentPage)
	{
		ICourtDAO courtDao = sqlSession.getMapper(ICourtDAO.class);
		
		int dataCount = courtDao.countCourtNames(courtCode);
		int pageCount = util.getPageCount(5, dataCount);
		return util.getBootstrapIndexList(currentPage, pageCount, url);
	}
	
	public ArrayList<CourtNameDTO> getCourtNameList(String courtCode, String userAccountCode, int currentPage, String order)
	{
		ICourtDAO courtDao = sqlSession.getMapper(ICourtDAO.class);
		return courtDao.getCourtNameList(courtCode, userAccountCode, currentPage * 5 - 4, currentPage * 5, order);
	}
}
