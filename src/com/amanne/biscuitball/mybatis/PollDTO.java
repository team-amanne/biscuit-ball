package com.amanne.biscuitball.mybatis;

public class PollDTO 
{
	private String voterAccountCode;
	private String pollSubjectCode;
	private String goodOrBad;
	private String returnValue;
	
	public String getVoterAccountCode()
	{
		return voterAccountCode;
	}
	public void setVoterAccountCode(String voterAccountCode)
	{
		this.voterAccountCode = voterAccountCode;
	}
	public String getPollSubjectCode() 
	{
		return pollSubjectCode;
	}
	public void setPollSubjectCode(String pollSubjectCode) 
	{
		this.pollSubjectCode = pollSubjectCode;
	}
	public String getGoodOrBad() 
	{
		return goodOrBad;
	}
	public void setGoodOrBad(String goodOrBad) 
	{
		this.goodOrBad = goodOrBad;
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
