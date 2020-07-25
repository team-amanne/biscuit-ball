package com.amanne.biscuitball.model;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.amanne.biscuitball.mybatis.CourtDTO;
import com.amanne.biscuitball.mybatis.ICourtDAO;
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
	
	// 개설 하는 유저 정보 가져오기
	public void courtFounder(ModelAndView modelAndView, HttpServletRequest request)	// 회원정보 조회
	{
		// 요청 데이터 수신
	      HttpSession session = request.getSession();
	      UserInfo userInfo = (UserInfo) session.getAttribute("userInfo");   
	      
	      // 작업객체생성
	      IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
	      
	      // 작업준비
	      UserDTO user = dao.getUser(userInfo.getUserAcctCode());

	   
	      System.out.println(user.getUserEmail());
	      System.out.println(user.getUserPassword());
	      System.out.println(user.getUserName());
	      System.out.println(user.getUserBirthday());
	      System.out.println(user.getUserGender());
	      System.out.println(user.getUserHeight());
	      System.out.println(user.getSelfEvaluationType());
	      System.out.println(user.getUserCityCode());
	      System.out.println(user.getUserTel());
	      System.out.println(user.getUserPosition());
	      System.out.println(user.getSnsSync());

	      modelAndView.addObject("user", user);
	      modelAndView.setViewName("/play/PlayCreateMeeting");      		
	}
	
	// 유저 선택 조건 모임 가져오기
	
}
