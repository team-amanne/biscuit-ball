/*============================================
 	CrewDTO.java
 	2020.07.30
=============================================*/

package com.amanne.biscuitball.mybatis;

import java.util.ArrayList;

public class CrewDTO
{
	private String crewCode; 						// 크루코드
	private String crewName; 						// 크루이름
	private String crewOpenDate; 					// 크루개설일시
	private String titleAchievementGetCode; 		// 대표업적획득코드
	private String titleAchievementCode; 			// 대표업적코드
	private String titleAchievementName; 			// 대표업적명
	private String titleAchievementImg;				// 대표업적아이콘경로
	private String crewCourtCode; 					// 홈코트코드
	private String crewCourtName; 					// 홈코트이름
	private String crewFavoriteBattleModeCode;	 	// 선호대전방식코드
	private String crewFavoriteBattleMode; 			// 선호대전방식
	private String crewBattleRefuseCode; 			// 대전신청가능여부코드
	private String crewBattleRefuse; 				// 대전신청가능여부
	private int crewJoinMinBirthyear; 				// 최소가입생년조건
	private int crewJoinMaxBirthyear; 				// 최대가입생년조건
	private double crewJoinMinFairplayScore; 		// 최소가입fps조건
	private String crewJoinAbilityLimitCode; 		// 최소가입실력조건코드
	private String crewJoinMinTierCode; 			// 최소가입티어조건
	private String crewJoinMaxTierCode; 			// 최대가입티어조건
	private int crewJoinMinAbilityScore; 			// 최소가입실력점수조건
	private int crewJoinMaxAbilityScore; 			// 최대가입실력점수조건
	private double crewFairplayScore; 				// 평균fps
	private String leaderMemberCode; 				// 리더 멤버코드
	private String leaderAccountCode; 				// 리더 계정코드
	private String leaderNickname; 					// 리더 닉네임
	private String crewStatus; 						// 크루 상태
	private ArrayList crewMemberList; 				// 크루 멤버 목록
	private int penaltyCount; 						// 제재횟수
	private String crewPenaltyStatus; 				// 제재상태
	private ArrayList<RegionDTO> crewBaseAreaList; 	// 크루거점지역목록
	private String crewProfileImg; 					// 크루프로필사진

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
