/*============================================
 	BattleLeaderPlaylogDTO.java
 	2020.07.30
=============================================*/

package com.amanne.biscuitball.mybatis;

public class BattleLeaderPlaylogDTO
{
	private String leaderPlaylogCode; 			// 리더플레이로그코드
	private String battleRequestCode; 			// 대전신청코드
	private String inputCrewCode; 				// 입력크루코드
	private String inputCrewName; 				// 입력크루명
	private String inputDate; 					// 입력일시
	private double rivalCrewFairplayScore; 		// 상대크루fps
	private String battleResultTypeCode; 		// 대전결과코드
	private String battleResult; 				// 대전결과
	private String mvpBattleJoinCode; 			// mvp 대전참가코드
	private String mvpAccountCode; 				// mvp 계정코드
	private String mvpNickname; 				// mvp 닉네임

	public String getLeaderPlaylogCode()
	{
		return leaderPlaylogCode;
	}

	public void setLeaderPlaylogCode(String leaderPlaylogCode)
	{
		this.leaderPlaylogCode = leaderPlaylogCode;
	}

	public String getBattleRequestCode()
	{
		return battleRequestCode;
	}

	public void setBattleRequestCode(String battleRequestCode)
	{
		this.battleRequestCode = battleRequestCode;
	}

	public String getInputCrewCode()
	{
		return inputCrewCode;
	}

	public void setInputCrewCode(String inputCrewCode)
	{
		this.inputCrewCode = inputCrewCode;
	}

	public String getInputCrewName()
	{
		return inputCrewName;
	}

	public void setInputCrewName(String inputCrewName)
	{
		this.inputCrewName = inputCrewName;
	}

	public String getInputDate()
	{
		return inputDate;
	}

	public void setInputDate(String inputDate)
	{
		this.inputDate = inputDate;
	}

	public double getRivalCrewFairplayScore()
	{
		return rivalCrewFairplayScore;
	}

	public void setRivalCrewFairplayScore(double rivalCrewFairplayScore)
	{
		this.rivalCrewFairplayScore = rivalCrewFairplayScore;
	}

	public String getBattleResultTypeCode()
	{
		return battleResultTypeCode;
	}

	public void setBattleResultTypeCode(String battleResultTypeCode)
	{
		this.battleResultTypeCode = battleResultTypeCode;
	}

	public String getBattleResult()
	{
		return battleResult;
	}

	public void setBattleResult(String battleResult)
	{
		this.battleResult = battleResult;
	}

	public String getMvpBattleJoinCode()
	{
		return mvpBattleJoinCode;
	}

	public void setMvpBattleJoinCode(String mvpBattleJoinCode)
	{
		this.mvpBattleJoinCode = mvpBattleJoinCode;
	}

	public String getMvpAccountCode()
	{
		return mvpAccountCode;
	}

	public void setMvpAccountCode(String mvpAccountCode)
	{
		this.mvpAccountCode = mvpAccountCode;
	}

	public String getMvpNickname()
	{
		return mvpNickname;
	}

	public void setMvpNickname(String mvpNickname)
	{
		this.mvpNickname = mvpNickname;
	}

}
