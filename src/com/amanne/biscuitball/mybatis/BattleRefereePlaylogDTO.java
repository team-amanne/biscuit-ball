/*============================================
 	BattleRefereePlaylogDTO.java
 	2020.07.30
=============================================*/

package com.amanne.biscuitball.mybatis;

import java.util.ArrayList;

public class BattleRefereePlaylogDTO
{
	private String refereePlaylogCode; 					// �����÷��̷α��ڵ�
	private String battleRequestCode; 					// ������û�ڵ�
	private boolean battleCancelOrNot; 					// ������ҿ���
	private String inputDate; 							// �Է��Ͻ�
	private String battleResult; 						// �������
	private ArrayList<QuarterScoreDTO> quarterScores; 	// ���ͺ���������Ʈ
	private int senderScore; 							// ��ûũ�� �� ����
	private int receiverScore; 							// ��û���� ũ�� �� ����

	public String getRefereePlaylogCode()
	{
		return refereePlaylogCode;
	}

	public void setRefereePlaylogCode(String refereePlaylogCode)
	{
		this.refereePlaylogCode = refereePlaylogCode;
	}

	public String getBattleRequestCode()
	{
		return battleRequestCode;
	}

	public void setBattleRequestCode(String battleRequestCode)
	{
		this.battleRequestCode = battleRequestCode;
	}

	public boolean isBattleCancelOrNot()
	{
		return battleCancelOrNot;
	}

	public void setBattleCancelOrNot(boolean battleCancelOrNot)
	{
		this.battleCancelOrNot = battleCancelOrNot;
	}

	public String getInputDate()
	{
		return inputDate;
	}

	public void setInputDate(String inputDate)
	{
		this.inputDate = inputDate;
	}

	public String getBattleResult()
	{
		return battleResult;
	}

	public void setBattleResult(String battleResult)
	{
		this.battleResult = battleResult;
	}

	public ArrayList<QuarterScoreDTO> getQuarterScores()
	{
		return quarterScores;
	}

	public void setQuarterScores(ArrayList<QuarterScoreDTO> quarterScores)
	{
		this.quarterScores = quarterScores;
	}

	public int getSenderScore()
	{
		return senderScore;
	}

	public void setSenderScore(int senderScore)
	{
		this.senderScore = senderScore;
	}

	public int getReceiverScore()
	{
		return receiverScore;
	}

	public void setReceiverScore(int receiverScore)
	{
		this.receiverScore = receiverScore;
	}

}
