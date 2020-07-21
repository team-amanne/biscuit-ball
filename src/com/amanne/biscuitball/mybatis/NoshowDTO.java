/*============================================
 	NoshowDTO.java
 	생성일: 2020.07.20
 	최근수정일: 2020.07.21
=============================================*/

package com.amanne.biscuitball.mybatis;

public class NoshowDTO 
{
	private String noshowCode; 				// 노쇼코드
	private String playlogCode; 			// 플레이로그코드
	private String noshowUserJoinCode; 		// 노쇼유저참가코드
	private String meetingCode; 			// 참여모임코드
	private String noshowUserAccountCode; 	// 노쇼유저계정코드
	private String noshowUserNickname; 		// 노쇼유저닉네임
	private boolean returnValue;
	
	public String getNoshowCode() {
		return noshowCode;
	}
	public void setNoshowCode(String noshowCode) {
		this.noshowCode = noshowCode;
	}
	public String getPlaylogCode() {
		return playlogCode;
	}
	public void setPlaylogCode(String playlogCode) {
		this.playlogCode = playlogCode;
	}
	public String getNoshowUserJoinCode() {
		return noshowUserJoinCode;
	}
	public void setNoshowUserJoinCode(String noshowUserJoinCode) {
		this.noshowUserJoinCode = noshowUserJoinCode;
	}
	public String getMeetingCode() {
		return meetingCode;
	}
	public void setMeetingCode(String meetingCode) {
		this.meetingCode = meetingCode;
	}
	public String getNoshowUserAccountCode() {
		return noshowUserAccountCode;
	}
	public void setNoshowUserAccountCode(String noshowUserAccountCode) {
		this.noshowUserAccountCode = noshowUserAccountCode;
	}
	public String getNoshowUserNickname() {
		return noshowUserNickname;
	}
	public void setNoshowUserNickname(String noshowUserNickname) {
		this.noshowUserNickname = noshowUserNickname;
	}
	public boolean isReturnValue() {
		return returnValue;
	}
	public void setReturnValue(boolean returnValue) {
		this.returnValue = returnValue;
	}
}
