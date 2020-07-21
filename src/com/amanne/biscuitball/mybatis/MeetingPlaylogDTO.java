/*============================================
 	MeetingPlaylogDTO.java
 	생성일: 2020.07.20
 	최근수정일: 2020.07.21
=============================================*/

package com.amanne.biscuitball.mybatis;

import java.util.ArrayList;

public class MeetingPlaylogDTO 
{
	private String playlogCode; 						// 모임플레이로그 코드
	private String meetTypeName; 						// 모임타입명
	private String meetSubject; 						// 모임명
	private String courtName; 							// 코트명
	private String meetDate; 							// 모임 날짜
	private String meetPeopleNumber; 					// 모임참여인원수
	private String meetJoinCode; 						// 모임참가코드
	private String playTime; 							// 플레이시간
	private String captainNickname; 					// 주장닉네임
	private String joinAccountCode; 					// 참가자계정코드
	private ArrayList<EvaluationDTO> evaluationList; 	// 평가리스트
	private ArrayList<NoshowDTO> noshowList; 			// 노쇼리스트
	private String returnValue;
	
	public String getPlaylogCode() {
		return playlogCode;
	}
	public void setPlaylogCode(String playlogCode) {
		this.playlogCode = playlogCode;
	}
	public String getMeetTypeName() {
		return meetTypeName;
	}
	public void setMeetTypeName(String meetTypeName) {
		this.meetTypeName = meetTypeName;
	}
	public String getMeetSubject() {
		return meetSubject;
	}
	public void setMeetSubject(String meetSubject) {
		this.meetSubject = meetSubject;
	}
	public String getCourtName() {
		return courtName;
	}
	public void setCourtName(String courtName) {
		this.courtName = courtName;
	}
	public String getMeetDate() {
		return meetDate;
	}
	public void setMeetDate(String meetDate) {
		this.meetDate = meetDate;
	}
	public String getMeetPeopleNumber() {
		return meetPeopleNumber;
	}
	public void setMeetPeopleNumber(String meetPeopleNumber) {
		this.meetPeopleNumber = meetPeopleNumber;
	}
	public String getMeetJoinCode() {
		return meetJoinCode;
	}
	public void setMeetJoinCode(String meetJoinCode) {
		this.meetJoinCode = meetJoinCode;
	}
	public String getPlayTime() {
		return playTime;
	}
	public void setPlayTime(String playTime) {
		this.playTime = playTime;
	}
	public String getCaptainNickname() {
		return captainNickname;
	}
	public void setCaptainNickname(String captainNickname) {
		this.captainNickname = captainNickname;
	}
	public String getJoinAccountCode() {
		return joinAccountCode;
	}
	public void setJoinAccountCode(String joinAccountCode) {
		this.joinAccountCode = joinAccountCode;
	}
	public ArrayList<EvaluationDTO> getEvaluationList() {
		return evaluationList;
	}
	public void setEvaluationList(ArrayList<EvaluationDTO> evaluationList) {
		this.evaluationList = evaluationList;
	}
	public ArrayList<NoshowDTO> getNoshowList() {
		return noshowList;
	}
	public void setNoshowList(ArrayList<NoshowDTO> noshowList) {
		this.noshowList = noshowList;
	}
	public String isReturnValue() {
		return returnValue;
	}
	public void setReturnValue(String returnValue) {
		this.returnValue = returnValue;
	}
}
