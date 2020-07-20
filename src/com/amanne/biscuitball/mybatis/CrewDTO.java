/*============================================
 	CrewDTO.java
 	2020.07.30
=============================================*/

package com.amanne.biscuitball.mybatis;

import java.util.ArrayList;

public class CrewDTO
{
	private String crewCode; 						// ũ���ڵ�
	private String crewName; 						// ũ���̸�
	private String crewOpenDate; 					// ũ�簳���Ͻ�
	private String titleAchievementGetCode; 		// ��ǥ����ȹ���ڵ�
	private String titleAchievementCode; 			// ��ǥ�����ڵ�
	private String titleAchievementName; 			// ��ǥ������
	private String titleAchievementImg;				// ��ǥ���������ܰ��
	private String crewCourtCode; 					// Ȩ��Ʈ�ڵ�
	private String crewCourtName; 					// Ȩ��Ʈ�̸�
	private String crewFavoriteBattleModeCode;	 	// ��ȣ��������ڵ�
	private String crewFavoriteBattleMode; 			// ��ȣ�������
	private String crewBattleRefuseCode; 			// ������û���ɿ����ڵ�
	private String crewBattleRefuse; 				// ������û���ɿ���
	private int crewJoinMinBirthyear; 				// �ּҰ��Ի�������
	private int crewJoinMaxBirthyear; 				// �ִ밡�Ի�������
	private double crewJoinMinFairplayScore; 		// �ּҰ���fps����
	private String crewJoinAbilityLimitCode; 		// �ּҰ��ԽǷ������ڵ�
	private String crewJoinMinTierCode; 			// �ּҰ���Ƽ������
	private String crewJoinMaxTierCode; 			// �ִ밡��Ƽ������
	private int crewJoinMinAbilityScore; 			// �ּҰ��ԽǷ���������
	private int crewJoinMaxAbilityScore; 			// �ִ밡�ԽǷ���������
	private double crewFairplayScore; 				// ���fps
	private String leaderMemberCode; 				// ���� ����ڵ�
	private String leaderAccountCode; 				// ���� �����ڵ�
	private String leaderNickname; 					// ���� �г���
	private String crewStatus; 						// ũ�� ����
	private ArrayList crewMemberList; 				// ũ�� ��� ���
	private int penaltyCount; 						// ����Ƚ��
	private String crewPenaltyStatus; 				// �������
	private ArrayList<RegionDTO> crewBaseAreaList; 	// ũ������������
	private String crewProfileImg; 					// ũ�������ʻ���

	public String getCrewCode()
	{
		return crewCode;
	}

	public void setCrewCode(String crewCode)
	{
		this.crewCode = crewCode;
	}

	public String getCrewName()
	{
		return crewName;
	}

	public void setCrewName(String crewName)
	{
		this.crewName = crewName;
	}

	public String getCrewOpenDate()
	{
		return crewOpenDate;
	}

	public void setCrewOpenDate(String crewOpenDate)
	{
		this.crewOpenDate = crewOpenDate;
	}

	public String getTitleAchievementGetCode()
	{
		return titleAchievementGetCode;
	}

	public void setTitleAchievementGetCode(String titleAchievementGetCode)
	{
		this.titleAchievementGetCode = titleAchievementGetCode;
	}

	public String getTitleAchievementCode()
	{
		return titleAchievementCode;
	}

	public void setTitleAchievementCode(String titleAchievementCode)
	{
		this.titleAchievementCode = titleAchievementCode;
	}

	public String getTitleAchievementName()
	{
		return titleAchievementName;
	}

	public void setTitleAchievementName(String titleAchievementName)
	{
		this.titleAchievementName = titleAchievementName;
	}

	public String getTitleAchievementImg()
	{
		return titleAchievementImg;
	}

	public void setTitleAchievementImg(String titleAchievementImg)
	{
		this.titleAchievementImg = titleAchievementImg;
	}

	public String getCrewCourtCode()
	{
		return crewCourtCode;
	}

	public void setCrewCourtCode(String crewCourtCode)
	{
		this.crewCourtCode = crewCourtCode;
	}

	public String getCrewCourtName()
	{
		return crewCourtName;
	}

	public void setCrewCourtName(String crewCourtName)
	{
		this.crewCourtName = crewCourtName;
	}

	public String getCrewFavoriteBattleModeCode()
	{
		return crewFavoriteBattleModeCode;
	}

	public void setCrewFavoriteBattleModeCode(String crewFavoriteBattleModeCode)
	{
		this.crewFavoriteBattleModeCode = crewFavoriteBattleModeCode;
	}

	public String getCrewFavoriteBattleMode()
	{
		return crewFavoriteBattleMode;
	}

	public void setCrewFavoriteBattleMode(String crewFavoriteBattleMode)
	{
		this.crewFavoriteBattleMode = crewFavoriteBattleMode;
	}

	public String getCrewBattleRefuseCode()
	{
		return crewBattleRefuseCode;
	}

	public void setCrewBattleRefuseCode(String crewBattleRefuseCode)
	{
		this.crewBattleRefuseCode = crewBattleRefuseCode;
	}

	public String getCrewBattleRefuse()
	{
		return crewBattleRefuse;
	}

	public void setCrewBattleRefuse(String crewBattleRefuse)
	{
		this.crewBattleRefuse = crewBattleRefuse;
	}

	public int getCrewJoinMinBirthyear()
	{
		return crewJoinMinBirthyear;
	}

	public void setCrewJoinMinBirthyear(int crewJoinMinBirthyear)
	{
		this.crewJoinMinBirthyear = crewJoinMinBirthyear;
	}

	public int getCrewJoinMaxBirthyear()
	{
		return crewJoinMaxBirthyear;
	}

	public void setCrewJoinMaxBirthyear(int crewJoinMaxBirthyear)
	{
		this.crewJoinMaxBirthyear = crewJoinMaxBirthyear;
	}

	public double getCrewJoinMinFairplayScore()
	{
		return crewJoinMinFairplayScore;
	}

	public void setCrewJoinMinFairplayScore(double crewJoinMinFairplayScore)
	{
		this.crewJoinMinFairplayScore = crewJoinMinFairplayScore;
	}

	public String getCrewJoinAbilityLimitCode()
	{
		return crewJoinAbilityLimitCode;
	}

	public void setCrewJoinAbilityLimitCode(String crewJoinAbilityLimitCode)
	{
		this.crewJoinAbilityLimitCode = crewJoinAbilityLimitCode;
	}

	public String getCrewJoinMinTierCode()
	{
		return crewJoinMinTierCode;
	}

	public void setCrewJoinMinTierCode(String crewJoinMinTierCode)
	{
		this.crewJoinMinTierCode = crewJoinMinTierCode;
	}

	public String getCrewJoinMaxTierCode()
	{
		return crewJoinMaxTierCode;
	}

	public void setCrewJoinMaxTierCode(String crewJoinMaxTierCode)
	{
		this.crewJoinMaxTierCode = crewJoinMaxTierCode;
	}

	public int getCrewJoinMinAbilityScore()
	{
		return crewJoinMinAbilityScore;
	}

	public void setCrewJoinMinAbilityScore(int crewJoinMinAbilityScore)
	{
		this.crewJoinMinAbilityScore = crewJoinMinAbilityScore;
	}

	public int getCrewJoinMaxAbilityScore()
	{
		return crewJoinMaxAbilityScore;
	}

	public void setCrewJoinMaxAbilityScore(int crewJoinMaxAbilityScore)
	{
		this.crewJoinMaxAbilityScore = crewJoinMaxAbilityScore;
	}

	public double getCrewFairplayScore()
	{
		return crewFairplayScore;
	}

	public void setCrewFairplayScore(double crewFairplayScore)
	{
		this.crewFairplayScore = crewFairplayScore;
	}

	public String getLeaderMemberCode()
	{
		return leaderMemberCode;
	}

	public void setLeaderMemberCode(String leaderMemberCode)
	{
		this.leaderMemberCode = leaderMemberCode;
	}

	public String getLeaderAccountCode()
	{
		return leaderAccountCode;
	}

	public void setLeaderAccountCode(String leaderAccountCode)
	{
		this.leaderAccountCode = leaderAccountCode;
	}

	public String getLeaderNickname()
	{
		return leaderNickname;
	}

	public void setLeaderNickname(String leaderNickname)
	{
		this.leaderNickname = leaderNickname;
	}

	public String getCrewStatus()
	{
		return crewStatus;
	}

	public void setCrewStatus(String crewStatus)
	{
		this.crewStatus = crewStatus;
	}

	public ArrayList getCrewMemberList()
	{
		return crewMemberList;
	}

	public void setCrewMemberList(ArrayList crewMemberList)
	{
		this.crewMemberList = crewMemberList;
	}

	public int getPenaltyCount()
	{
		return penaltyCount;
	}

	public void setPenaltyCount(int penaltyCount)
	{
		this.penaltyCount = penaltyCount;
	}

	public String getCrewPenaltyStatus()
	{
		return crewPenaltyStatus;
	}

	public void setCrewPenaltyStatus(String crewPenaltyStatus)
	{
		this.crewPenaltyStatus = crewPenaltyStatus;
	}

	public ArrayList<RegionDTO> getCrewBaseAreaList()
	{
		return crewBaseAreaList;
	}

	public void setCrewBaseAreaList(ArrayList<RegionDTO> crewBaseAreaList)
	{
		this.crewBaseAreaList = crewBaseAreaList;
	}

	public String getCrewProfileImg()
	{
		return crewProfileImg;
	}

	public void setCrewProfileImg(String crewProfileImg)
	{
		this.crewProfileImg = crewProfileImg;
	}

}
