package com.amanne.biscuitball.model;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.amanne.biscuitball.mybatis.AdminDTO;
import com.amanne.biscuitball.mybatis.IAdminDAO;
import com.amanne.biscuitball.mybatis.IUserDAO;
import com.amanne.biscuitball.mybatis.LoginDTO;
import com.amanne.biscuitball.mybatis.UserDTO;

public class LoginModel
{
	@Autowired
	private SqlSession sqlSession;
	
	// 관리자 로그인 메소드
	public UserInfo adminlogin(String email, String pwd, String ip)
	{
		UserInfo userInfo = new UserInfo();
		LoginDTO loginDto = new LoginDTO();
		
		loginDto.setEmail(email);
		loginDto.setPassword(pwd);
		loginDto.setIp(ip);
		
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
	public UserInfo userlogin(String email, String pwd, String ip)
    {
       UserInfo userInfo = new UserInfo();
       LoginDTO loginDto = new LoginDTO();
       
       loginDto.setEmail(email);
       loginDto.setPassword(pwd);
       loginDto.setIp(ip);
       
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
