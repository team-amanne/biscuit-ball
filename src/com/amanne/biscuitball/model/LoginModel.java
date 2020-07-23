package com.amanne.biscuitball.model;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.amanne.biscuitball.mybatis.AdminDTO;
import com.amanne.biscuitball.mybatis.IAdminDAO;
import com.amanne.biscuitball.mybatis.IUserDAO;
import com.amanne.biscuitball.mybatis.LoginDTO;
import com.amanne.biscuitball.mybatis.UserDTO;

@Service
public class LoginModel
{
	@Autowired
	private SqlSession sqlSession;
	
	// 관리자 로그인 메소드
	public UserInfo adminlogin(LoginDTO loginDto)
	{
		UserInfo userInfo = new UserInfo();
		
		
		IAdminDAO adminDao = sqlSession.getMapper(IAdminDAO.class);
		adminDao.loginAsAdmin(loginDto);
		String returnValue = loginDto.getReturnValue();
		
		if (returnValue.equals("0"))
		{
			return null;
		}
		else
		{
			AdminDTO adminDto = adminDao.getAdmin(returnValue);
			userInfo.setUserCode(adminDto.getAdminCode());
			userInfo.setUserNickname(adminDto.getAdminNickname());
			
			return userInfo;
		}
	}
	
	// 유저 로그인 메소드
	public UserInfo userlogin(LoginDTO loginDto)
    {
       UserInfo userInfo = new UserInfo();
       
       
       IUserDAO userDao = sqlSession.getMapper(IUserDAO.class);
       
       userDao.loginAsUser(loginDto);
       
       String returnValue = loginDto.getReturnValue();
       
       if(returnValue.equals("0") || returnValue.equals("-1"))
       {
          return null;
       }
       else
       {
          UserDTO userDto = new UserDTO();
          userDto = userDao.getUser(returnValue);
    
          
           userInfo.setUserCode(userDto.getUserCode());
           userInfo.setUserAcctCode(userDto.getUserAccountCode());
           userInfo.setUserNickname(userDto.getUserNickname());
           userInfo.setUserStatus(userDto.getUserStatus());
           
           return userInfo;
           
       }
    }
	
	
}
