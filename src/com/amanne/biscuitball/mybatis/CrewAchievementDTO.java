/*============================================
 	CrewAchievementDTO.java
 	2020.07.30
=============================================*/

package com.amanne.biscuitball.mybatis;

public class CrewAchievementDTO
{
	private String crewAchievementGetCode; 			// ũ�����ȹ���ȣ
	private String crewAchievementCode; 			// ũ�������ȣ
	private String crewAchievementName; 			// ������
	private String crewAchievementImg; 				// ���������ܰ��
	private String crewAchievementCondition; 		// �������ǳ���
	private String getterCrewCode; 					// ȹ��ũ���ڵ�
	private String crewAchievementGetDate; 			// ȹ���Ͻ�

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
