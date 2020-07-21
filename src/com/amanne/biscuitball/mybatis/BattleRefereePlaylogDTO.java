/*============================================
 	BattleRefereePlaylogDTO.java
 	생성일: 2020.07.20
 	최근수정일: 2020.07.21
=============================================*/

package com.amanne.biscuitball.mybatis;

import java.util.ArrayList;

public class BattleRefereePlaylogDTO
{
	private String refereePlaylogCode; 					// 심판플레이로그코드
	private String battleRequestCode; 					// 대전신청코드
	private boolean battleCancelOrNot; 					// 합의취소여부
	private String inputDate; 							// 입력일시
	private String battleResult; 						// 대전결과
	private ArrayList<QuarterScoreDTO> quarterScores; 	// 쿼터별점수리스트
	private int senderScore; 							// 신청크루 총 득점
	private int receiverScore; 							// 신청받은 크루 총 득점
	private boolean returnValue;

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

	public boolean isReturnValue() {
		return returnValue;
	}

	public void setReturnValue(boolean returnValue) {
		this.returnValue = returnValue;
	}

}
