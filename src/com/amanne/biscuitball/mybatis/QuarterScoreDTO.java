/*============================================
 	QuarterScoreDTO.java
 	2020.07.30
=============================================*/

package com.amanne.biscuitball.mybatis;

public class QuarterScoreDTO
{
	private int quarter; 				// 쿼터
	private String refereePLCode; 		// 심판플레이로그코드
	private int senderScore; 			// 신청크루 득점
	private int receiverScore; 			// 신청받은크루 득점

	public int getQuarter()
	{
		return quarter;
	}

	public void setQuarter(int quarter)
	{
		this.quarter = quarter;
	}

	public String getRefereePLCode()
	{
		return refereePLCode;
	}

	public void setRefereePLCode(String refereePLCode)
	{
		this.refereePLCode = refereePLCode;
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
