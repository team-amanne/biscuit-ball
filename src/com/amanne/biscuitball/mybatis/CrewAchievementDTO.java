/*============================================
 	CrewAchievementDTO.java
 	2020.07.30
=============================================*/

package com.amanne.biscuitball.mybatis;

public class CrewAchievementDTO
{
	private String crewAchievementGetCode; 			// 크루업적획득번호
	private String crewAchievementCode; 			// 크루업적번호
	private String crewAchievementName; 			// 업적명
	private String crewAchievementImg; 				// 업적아이콘경로
	private String crewAchievementCondition; 		// 업적조건내용
	private String getterCrewCode; 					// 획득크루코드
	private String crewAchievementGetDate; 			// 획득일시

	public String getCrewAchievementGetCode()
	{
		return crewAchievementGetCode;
	}

	public void setCrewAchievementGetCode(String crewAchievementGetCode)
	{
		this.crewAchievementGetCode = crewAchievementGetCode;
	}

	public String getCrewAchievementCode()
	{
		return crewAchievementCode;
	}

	public void setCrewAchievementCode(String crewAchievementCode)
	{
		this.crewAchievementCode = crewAchievementCode;
	}

	public String getCrewAchievementName()
	{
		return crewAchievementName;
	}

	public void setCrewAchievementName(String crewAchievementName)
	{
		this.crewAchievementName = crewAchievementName;
	}

	public String getCrewAchievementImg()
	{
		return crewAchievementImg;
	}

	public void setCrewAchievementImg(String crewAchievementImg)
	{
		this.crewAchievementImg = crewAchievementImg;
	}

	public String getCrewAchievementCondition()
	{
		return crewAchievementCondition;
	}

	public void setCrewAchievementCondition(String crewAchievementCondition)
	{
		this.crewAchievementCondition = crewAchievementCondition;
	}

	public String getGetterCrewCode()
	{
		return getterCrewCode;
	}

	public void setGetterCrewCode(String getterCrewCode)
	{
		this.getterCrewCode = getterCrewCode;
	}

	public String getCrewAchievementGetDate()
	{
		return crewAchievementGetDate;
	}

	public void setCrewAchievementGetDate(String crewAchievementGetDate)
	{
		this.crewAchievementGetDate = crewAchievementGetDate;
	}

}
