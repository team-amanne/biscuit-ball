package com.amanne.biscuitball.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.amanne.biscuitball.mybatis.IUserDAO;
import com.amanne.biscuitball.mybatis.UserDTO;
import com.amanne.biscuitball.util.MyUtil;

@Service
public class PartyCreateModel
{
	@Autowired
	private SqlSession sqlsession;
	
	// 유저 친구 목록 메소드
	public ArrayList<UserDTO> userFriends(UserInfo userInfo)
	{
		ArrayList<UserDTO> friendList = new ArrayList<UserDTO>();
		
		// UserDAO 생성(주입)
		IUserDAO userDao = sqlsession.getMapper(IUserDAO.class);
		
		// 페이징 위한 연산들
		
		// 페이징 위한 MyUtil 객체 생성
		myUtil myUtil = new MyUtil();
		
		//넘어온 페이지 번호 확인
	    String pageNum = request.getParameter("pageNum");
	    int currentPage =1; //현재 표시되어야하는 페이지
		
		int start = 0;
		int end = 0;
		
		// 페이지별 친구 리스트 가져오는 메소드.
		friendList = userDao.getFriendList(userInfo.getUserAcctCode(), start, end);
		
		return friendList;
	}
}
