/*============================================
 	PersonalAchievementDTO.java
 	2020.07.30
=============================================*/

package com.amanne.biscuitball.mybatis;

public class PersonalAchievementDTO
{
	private String personalAchievementGetCode; 		// ���ξ���ȹ���ȣ
	private String personalAchievementCode; 		// ���ξ�����ȣ(PK)
	private String personalAchievementName; 		// ������
	private String personalAchievementImg; 			// ���������ܰ��
	private String personalAchievementCondition; 	// �������ǳ���
	private String getterAccountCode; 				// ȹ��ȸ�������ڵ�
	private String personalAchievementGetDate;	 	// ȹ���Ͻ�

	public String getPersonalAchievementGetCode()
	{
		return personalAchievementGetCode;
	}

	public void setPersonalAchievementGetCode(String personalAchievementGetCode)
	{
		this.personalAchievementGetCode = personalAchievementGetCode;
	}

	public String getPersonalAchievementCode()
	{
		return personalAchievementCode;
	}

	public void setPersonalAchievementCode(String personalAchievementCode)
	{
		this.personalAchievementCode = personalAchievementCode;
	}

	public String getPersonalAchievementName()
	{
		return personalAchievementName;
	}

	public void setPersonalAchievementName(String personalAchievementName)
	{
		this.personalAchievementName = personalAchievementName;
	}

	public String getPersonalAchievementImg()
	{
		return personalAchievementImg;
	}

	public void setPersonalAchievementImg(String personalAchievementImg)
	{
		this.personalAchievementImg = personalAchievementImg;
	}

	public String getPersonalAchievementCondition()
	{
		return personalAchievementCondition;
	}

	public void setPersonalAchievementCondition(String personalAchievementCondition)
	{
		this.personalAchievementCondition = personalAchievementCondition;
	}

	public String getGetterAccountCode()
	{
		return getterAccountCode;
	}

	public void setGetterAccountCode(String getterAccountCode)
	{
		this.getterAccountCode = getterAccountCode;
	}

	public String getPersonalAchievementGetDate()
	{
		return personalAchievementGetDate;
	}

	public void setPersonalAchievementGetDate(String personalAchievementGetDate)
	{
		this.personalAchievementGetDate = personalAchievementGetDate;
	}

}
