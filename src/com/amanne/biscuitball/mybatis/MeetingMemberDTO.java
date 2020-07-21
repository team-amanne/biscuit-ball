/*============================================
 	MeetingMemberDTO.java
 	생성일: 2020.07.20
 	최근수정일: 2020.07.21
=============================================*/

package com.amanne.biscuitball.mybatis;

public class MeetingMemberDTO 
{
	private String meetJoinCode; 		// 모임참가코드
	private String meetCode; 			// 모임등록코드
	private String meetJoinDate; 		// 모임참가일
	private String joinAccountCode; 	// 모임참가자코드
	private String userNickname; 		// 참가자 닉네임
	private String captainOrNot; 		// 캡틴여부
	private String ballExistOrNot; 		// 공지참여부
	private boolean returnValue;
	
	public String getMeetJoinCode() {
		return meetJoinCode;
	}
	public void setMeetJoinCode(String meetJoinCode) {
		this.meetJoinCode = meetJoinCode;
	}
	public String getMeetCode() {
		return meetCode;
	}
	public void setMeetCode(String meetCode) {
		this.meetCode = meetCode;
	}
	public String getMeetJoinDate() {
		return meetJoinDate;
	}
	public void setMeetJoinDate(String meetJoinDate) {
		this.meetJoinDate = meetJoinDate;
	}
	public String getJoinAccountCode() {
		return joinAccountCode;
	}
	public void setJoinAccountCode(String joinAccountCode) {
		this.joinAccountCode = joinAccountCode;
	}
	public String getUserNickname() {
		return userNickname;
	}
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}
	public String getCaptainOrNot() {
		return captainOrNot;
	}
	public void setCaptainOrNot(String captainOrNot) {
		this.captainOrNot = captainOrNot;
	}
	public String getBallExistOrNot() {
		return ballExistOrNot;
	}
	public void setBallExistOrNot(String ballExistOrNot) {
		this.ballExistOrNot = ballExistOrNot;
	}
	public boolean isReturnValue() {
		return returnValue;
	}
	public void setReturnValue(boolean returnValue) {
		this.returnValue = returnValue;
	}
}
