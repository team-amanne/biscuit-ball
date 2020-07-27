/*============================================
 	MeetingDTO.java
 	생성일: 2020.07.20
 	최근수정일: 2020.07.27
=============================================*/

package com.amanne.biscuitball.mybatis;

import java.util.ArrayList;

public class MeetingDTO 
{
	private String meetingCode; 			// 모임등록번호
	private String meetingSubject; 			// 모임제목
	private int meetingPeopleNumber; 		// 모임참가자수
	private String meetingOpenDate; 		// 모임개설일
	private String meetingDate; 			// 모임시작시간
	private String meetingCloseDate; 		// 모집종료시간
	private String meetingEndDate; 			// 모임종료시간
	private String meetingNotice; 			// 모임공지사항
	private String meetingTypeCode; 		// 모임타입코드
	private String meetingTypeName; 		// 모임타입
	private String quickPlayOrNot; 			// 빠른농구 가능여부
	private String courtRegistrationCode; 	// 모임코트개설번호
	private String courtName;				// 코트 이름
	private int minTierCode; 				// 최소티어
	private int maxTierCode; 				// 최대티어
	private String confirmOrNot; 			// 모임확정여부
	private String blindOrNot; 				// 블라인드여부
	private String nowPeopleNumber;			// 현재 참가자 수
	private String catainAcctCode;			// 주장 계정 코드
	private String captainName;				// 주장 닉네임
	private String cityCode;				// 코트 소속 지역 코드
	private String cityName;				// 코트 소속 지역 이름
	private ArrayList<MeetingMemberDTO> meetingMemberList; // 모임 참여 멤버
	private String returnValue;
	
	
	
	
	public ArrayList<MeetingMemberDTO> getMeetingMemberList()
	{
		return meetingMemberList;
	}
	public void setMeetingMemberList(ArrayList<MeetingMemberDTO> meetingMemberList)
	{
		this.meetingMemberList = meetingMemberList;
	}
	public String getCatainAcctCode()
	{
		return catainAcctCode;
	}
	public void setCatainAcctCode(String catainAcctCode)
	{
		this.catainAcctCode = catainAcctCode;
	}
	public String getCaptainName()
	{
		return captainName;
	}
	public void setCaptainName(String captainName)
	{
		this.captainName = captainName;
	}
	public String getNowPeopleNumber()
	{
		return nowPeopleNumber;
	}
	public void setNowPeopleNumber(String nowPeopleNumber)
	{
		this.nowPeopleNumber = nowPeopleNumber;
	}
	public String getReturnValue()
	{
		return returnValue;
	}
	public String getMeetingCode() {
		return meetingCode;
	}
	public void setMeetingCode(String meetingCode) {
		this.meetingCode = meetingCode;
	}
	public String getMeetingSubject() {
		return meetingSubject;
	}
	public void setMeetingSubject(String meetingSubject) {
		this.meetingSubject = meetingSubject;
	}
	public int getMeetingPeopleNumber() {
		return meetingPeopleNumber;
	}
	public void setMeetingPeopleNumber(int meetingPeopleNumber) {
		this.meetingPeopleNumber = meetingPeopleNumber;
	}
	public String getMeetingOpenDate() {
		return meetingOpenDate;
	}
	public void setMeetingOpenDate(String meetingOpenDate) {
		this.meetingOpenDate = meetingOpenDate;
	}
	public String getMeetingDate() {
		return meetingDate;
	}
	public void setMeetingDate(String meetingDate) {
		this.meetingDate = meetingDate;
	}
	public String getMeetingCloseDate() {
		return meetingCloseDate;
	}
	public void setMeetingCloseDate(String meetingCloseDate) {
		this.meetingCloseDate = meetingCloseDate;
	}
	public String getMeetingEndDate() {
		return meetingEndDate;
	}
	public void setMeetingEndDate(String meetingEndDate) {
		this.meetingEndDate = meetingEndDate;
	}
	public String getMeetingNotice() {
		return meetingNotice;
	}
	public void setMeetingNotice(String meetingNotice) {
		this.meetingNotice = meetingNotice;
	}
	public String getMeetingTypeCode() {
		return meetingTypeCode;
	}
	public void setMeetingTypeCode(String meetingTypeCode) {
		this.meetingTypeCode = meetingTypeCode;
	}
	public String getMeetingTypeName() {
		return meetingTypeName;
	}
	public void setMeetingTypeName(String meetingTypeName) {
		this.meetingTypeName = meetingTypeName;
	}
	public String getQuickPlayOrNot() {
		return quickPlayOrNot;
	}
	public void setQuickPlayOrNot(String quickPlayOrNot) {
		this.quickPlayOrNot = quickPlayOrNot;
	}
	public String getCourtRegistrationCode() {
		return courtRegistrationCode;
	}
	public void setCourtRegistrationCode(String courtRegistrationCode) {
		this.courtRegistrationCode = courtRegistrationCode;
	}
	public int getMinTierCode() {
		return minTierCode;
	}
	public void setMinTierCode(int minTierCode) {
		this.minTierCode = minTierCode;
	}
	public int getMaxTierCode() {
		return maxTierCode;
	}
	public void setMaxTierCode(int maxTierCode) {
		this.maxTierCode = maxTierCode;
	}
	public String getConfirmOrNot() {
		return confirmOrNot;
	}
	public void setConfirmOrNot(String confirmOrNot) {
		this.confirmOrNot = confirmOrNot;
	}
	public String getBlindOrNot() {
		return blindOrNot;
	}
	public void setBlindOrNot(String blindOrNot) {
		this.blindOrNot = blindOrNot;
	}
	public String isReturnValue() {
		return returnValue;
	}
	public void setReturnValue(String returnValue) {
		this.returnValue = returnValue;
	}
	public String getCityCode() {
		return cityCode;
	}
	public void setCityCode(String cityCode) {
		this.cityCode = cityCode;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public String getCourtName() {
		return courtName;
	}
	public void setCourtName(String courtName) {
		this.courtName = courtName;
	}
	
}
