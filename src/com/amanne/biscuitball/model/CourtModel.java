package com.amanne.biscuitball.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.amanne.biscuitball.mybatis.CourtDTO;
import com.amanne.biscuitball.mybatis.CourtDeleteRequestDTO;
import com.amanne.biscuitball.mybatis.CourtNameDTO;
import com.amanne.biscuitball.mybatis.CourtReviewDTO;
import com.amanne.biscuitball.mybatis.ICourtDAO;
import com.amanne.biscuitball.mybatis.IRegionDAO;
import com.amanne.biscuitball.mybatis.PollDTO;
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
			
			result.setTotalReviewCount(courtDao.countCourtReviews(courtCode));
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
	
	public int requestCourtDelete(CourtDeleteRequestDTO dto)
	{
		ICourtDAO courtDao = sqlSession.getMapper(ICourtDAO.class);
		courtDao.makeCourtDeleteRequest(dto);
		return Integer.parseInt(dto.getReturnValue());
	}
	
	public int deleteCourtAdmin(String adminCode, String courtCode)
	{
		ICourtDAO courtDao = sqlSession.getMapper(ICourtDAO.class);
		return courtDao.removeCourtAdmin(courtCode, adminCode);
	}
	
	public CourtDTO getCourtRegPollInfo(String courtCode, String userAccountCode)
	{
		ICourtDAO courtDao = sqlSession.getMapper(ICourtDAO.class);
		CourtDTO result = courtDao.getCourt(courtCode);
		String poll = courtDao.checkCourtRegPoll(courtCode, userAccountCode);
		if(poll != null)
		{
			result.setEnrollPollOrNot("YES");
			result.setEnrollYesOrNo(poll);
		}
		else 
		{
			result.setEnrollPollOrNot("NO");
			result.setEnrollYesOrNo("NONE");
		}
		return result;
	}
	
	public CourtDTO getCourtDelPollInfo(String courtCode, String userAccountCode)
	{
		ICourtDAO courtDao = sqlSession.getMapper(ICourtDAO.class);
		CourtDTO result = courtDao.getCourt(courtCode);
		String poll = courtDao.checkCourtDelPoll(courtCode, userAccountCode);
		if(poll != null)
		{
			result.setDelRequestPollOrNot("YES");
			result.setDelRequestYesOrNo(poll);
		}
		else 
		{
			result.setDelRequestPollOrNot("NO");
			result.setDelRequestYesOrNo("NONE");
		}
		return result;
	}
	
	public int likeReview(String reviewCode, String userAcctCode) 
	{
		ICourtDAO courtDao = sqlSession.getMapper(ICourtDAO.class);
		PollDTO dto = new PollDTO();
		dto.setPollSubjectCode(reviewCode);
		dto.setVoterAccountCode(userAcctCode);
		dto.setGoodOrBad("ZU01");
		
		if(courtDao.updatePollCourtReview(dto) == 0)
			return courtDao.pollCourtReview(dto);
		return 0;
	}

	public int dislikeReview(String reviewCode, String userAcctCode) 
	{
		ICourtDAO courtDao = sqlSession.getMapper(ICourtDAO.class);
		PollDTO dto = new PollDTO();
		dto.setPollSubjectCode(reviewCode);
		dto.setVoterAccountCode(userAcctCode);
		dto.setGoodOrBad("ZU02");
		
		if(courtDao.updatePollCourtReview(dto) == 0)
			return courtDao.pollCourtReview(dto);
		return 0;
	}
	
	public String pollCourtRegisterYes(String courtCode, String userAccountCode)
	{
		ICourtDAO courtDao = sqlSession.getMapper(ICourtDAO.class);
		PollDTO dto = new PollDTO();
		dto.setPollSubjectCode(courtCode);
		dto.setVoterAccountCode(userAccountCode);
		courtDao.pollCourtRegistrationYes(dto);
		return dto.getReturnValue();
	}

	public String pollCourtRegisterNo(String courtCode, String userAccountCode)
	{
		ICourtDAO courtDao = sqlSession.getMapper(ICourtDAO.class);
		PollDTO dto = new PollDTO();
		dto.setPollSubjectCode(courtCode);
		dto.setVoterAccountCode(userAccountCode);
		courtDao.pollCourtRegistrationNo(dto);
		return dto.getReturnValue();
	}

	public String pollCourtDeleteYes(String requestCode, String userAcctCode) 
	{
		ICourtDAO courtDao = sqlSession.getMapper(ICourtDAO.class);
		PollDTO dto = new PollDTO();
		dto.setPollSubjectCode(requestCode);
		dto.setVoterAccountCode(userAcctCode);
		courtDao.pollCourtDeleteRequestYes(dto);
		return dto.getReturnValue();
	}

	public String pollCourtDeleteNo(String requestCode, String userAcctCode) 
	{
		ICourtDAO courtDao = sqlSession.getMapper(ICourtDAO.class);
		PollDTO dto = new PollDTO();
		dto.setPollSubjectCode(requestCode);
		dto.setVoterAccountCode(userAcctCode);
		courtDao.pollCourtDeleteRequestNo(dto);
		return dto.getReturnValue();
	}
	
	
}
