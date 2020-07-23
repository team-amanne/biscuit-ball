package com.amanne.biscuitball.mybatis;

public class LoginDTO
{
	private String email;			// 사용자 이메일
	private String password;		// 사용자 비밀번호
	private String ip;				// 사용자 ip
	private String returnValue;
	public String getEmail()
	{
		return email;
	}
	public void setEmail(String email)
	{
		this.email = email;
	}
	public String getPassword()
	{
		return password;
	}
	public void setPassword(String password)
	{
		this.password = password;
	}
	public String getIp()
	{
		return ip;
	}
	public void setIp(String ip)
	{
		this.ip = ip;
	}
	public String getReturnValue()
	{
		return returnValue;
	}
	public void setReturnValue(String returnValue)
	{
		this.returnValue = returnValue;
	}		
	
	

	
	
}
