/*============================================
 	FriendRequestDTO.java
 	생성일: 2020.07.20
 	최근수정일: 2020.07.21
=============================================*/

package com.amanne.biscuitball.mybatis;

public class FriendRequestDTO 
{
	private String friendRequestCode; 		// 친구요청코드
	private String senderAccountCode; 		// 친구신청요청자유저코드
	private String senderNickname;   		// 친구신청요청자유저닉네임
	private String senderProfileImg;   		// 친구신청요청자프로필사진
	private String receiverAccountCode; 	// 친구신청대상자유저코드
	private String receiverNickname;   		// 친구신청대상자유저닉네임
	private String receiverProfileImg;		// 친구신청대상자프로필사진
	private String requestDate;             // 친구요청일
	private String answerDate;              // 친구처리일자
	private String returnValue;
	
	public String getFriendRequestCode()
	{
		return friendRequestCode;
	}
	public void setFriendRequestCode(String friendRequestCode)
	{
		this.friendRequestCode = friendRequestCode;
	}
	public String getSenderAccountCode()
	{
		return senderAccountCode;
	}
	public void setSenderAccountCode(String senderAccountCode)
	{
		this.senderAccountCode = senderAccountCode;
	}
	public String getSenderNickname()
	{
		return senderNickname;
	}
	public void setSenderNickname(String senderNickname)
	{
		this.senderNickname = senderNickname;
	}
	public String getSenderProfileImg()
	{
		return senderProfileImg;
	}
	public void setSenderProfileImg(String senderProfileImg)
	{
		this.senderProfileImg = senderProfileImg;
	}
	public String getReceiverAccountCode()
	{
		return receiverAccountCode;
	}
	public void setReceiverAccountCode(String receiverAccountCode)
	{
		this.receiverAccountCode = receiverAccountCode;
	}
	public String getReceiverNickname()
	{
		return receiverNickname;
	}
	public void setReceiverNickname(String receiverNickname)
	{
		this.receiverNickname = receiverNickname;
	}
	public String getReceiverProfileImg()
	{
		return receiverProfileImg;
	}
	public void setReceiverProfileImg(String receiverProfileImg)
	{
		this.receiverProfileImg = receiverProfileImg;
	}
	public String getRequestDate()
	{
		return requestDate;
	}
	public void setRequestDate(String requestDate)
	{
		this.requestDate = requestDate;
	}
	public String getReturnValue()
	{
		return returnValue;
	}
	public void setReturnValue(String returnValue)
	{
		this.returnValue = returnValue;
	}
	public String getAnswerDate()
	{
		return answerDate;
	}
	public void setAnswerDate(String answerDate)
	{
		this.answerDate = answerDate;
	}
	

}













                                