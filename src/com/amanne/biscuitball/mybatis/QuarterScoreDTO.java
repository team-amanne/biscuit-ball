/*============================================
 	QuarterScoreDTO.java
 	2020.07.30
=============================================*/

package com.amanne.biscuitball.mybatis;

public class QuarterScoreDTO
{
	private int quarter; 				// ����
	private String refereePLCode; 		// �����÷��̷α��ڵ�
	private int senderScore; 			// ��ûũ�� ����
	private int receiverScore; 			// ��û����ũ�� ����

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
