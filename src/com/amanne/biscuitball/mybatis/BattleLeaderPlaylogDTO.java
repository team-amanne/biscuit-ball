/*============================================
 	BattleLeaderPlaylogDTO.java
 	2020.07.30
=============================================*/

package com.amanne.biscuitball.mybatis;

public class BattleLeaderPlaylogDTO
{
	private String leaderPlaylogCode; 			// �����÷��̷α��ڵ�
	private String battleRequestCode; 			// ������û�ڵ�
	private String inputCrewCode; 				// �Է�ũ���ڵ�
	private String inputCrewName; 				// �Է�ũ���
	private String inputDate; 					// �Է��Ͻ�
	private double rivalCrewFairplayScore; 		// ���ũ��fps
	private String battleResultTypeCode; 		// ��������ڵ�
	private String battleResult; 				// �������
	private String mvpBattleJoinCode; 			// mvp ���������ڵ�
	private String mvpAccountCode; 				// mvp �����ڵ�
	private String mvpNickname; 				// mvp �г���

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
