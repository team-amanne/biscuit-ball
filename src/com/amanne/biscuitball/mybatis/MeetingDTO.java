/*============================================
 	MeetingDTO.java
 	생성일: 2020.07.20
 	최근수정일: 2020.07.21
=============================================*/

package com.amanne.biscuitball.mybatis;

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
	private String minTierGrade; 			// 최소티어
	private String maxTierGrade; 			// 최대티어
	private String ablLimitCode;			// 실력조건코드
	private String confirmOrNot; 			// 모임확정여부
	private String blindOrNot; 				// 블라인드여부
	private String openerAcctCode;			// 개설자 계정 코드
	private String returnValue;
	
	
	public String getMeetingCode()
	{
		return meetingCode;
	}
	public void setMeetingCode(String meetingCode)
	{
		this.meetingCode = meetingCode;
	}
	public String getMeetingSubject()
	{
		return meetingSubject;
	}
	public void setMeetingSubject(String meetingSubject)
	{
		this.meetingSubject = meetingSubject;
	}
	public int getMeetingPeopleNumber()
	{
		return meetingPeopleNumber;
	}
	public void setMeetingPeopleNumber(int meetingPeopleNumber)
	{
		this.meetingPeopleNumber = meetingPeopleNumber;
	}
	public String getMeetingOpenDate()
	{
		return meetingOpenDate;
	}
	public void setMeetingOpenDate(String meetingOpenDate)
	{
		this.meetingOpenDate = meetingOpenDate;
	}
	public String getMeetingDate()
	{
		return meetingDate;
	}
	public void setMeetingDate(String meetingDate)
	{
		this.meetingDate = meetingDate;
	}
	public String getMeetingCloseDate()
	{
		return meetingCloseDate;
	}
	public void setMeetingCloseDate(String meetingCloseDate)
	{
		this.meetingCloseDate = meetingCloseDate;
	}
	public String getMeetingEndDate()
	{
		return meetingEndDate;
	}
	public void setMeetingEndDate(String meetingEndDate)
	{
		this.meetingEndDate = meetingEndDate;
	}
	public String getMeetingNotice()
	{
		return meetingNotice;
	}
	public void setMeetingNotice(String meetingNotice)
	{
		this.meetingNotice = meetingNotice;
	}
	public String getMeetingTypeCode()
	{
		return meetingTypeCode;
	}
	public void setMeetingTypeCode(String meetingTypeCode)
	{
		this.meetingTypeCode = meetingTypeCode;
	}
	public String getMeetingTypeName()
	{
		return meetingTypeName;
	}
	public void setMeetingTypeName(String meetingTypeName)
	{
		this.meetingTypeName = meetingTypeName;
	}
	public String getQuickPlayOrNot()
	{
		return quickPlayOrNot;
	}
	public void setQuickPlayOrNot(String quickPlayOrNot)
	{
		this.quickPlayOrNot = quickPlayOrNot;
	}
	public String getCourtRegistrationCode()
	{
		return courtRegistrationCode;
	}
	public void setCourtRegistrationCode(String courtRegistrationCode)
	{
		this.courtRegistrationCode = courtRegistrationCode;
	}
	public String getMinTierGrade()
	{
		return minTierGrade;
	}
	public void setMinTierGrade(String minTierGrade)
	{
		this.minTierGrade = minTierGrade;
	}
	public String getMaxTierGrade()
	{
		return maxTierGrade;
	}
	public void setMaxTierGrade(String maxTierGrade)
	{
		this.maxTierGrade = maxTierGrade;
	}
	public String getAblLimitCode()
	{
		return ablLimitCode;
	}
	public void setAblLimitCode(String ablLimitCode)
	{
		this.ablLimitCode = ablLimitCode;
	}
	public String getConfirmOrNot()
	{
		return confirmOrNot;
	}
	public void setConfirmOrNot(String confirmOrNot)
	{
		this.confirmOrNot = confirmOrNot;
	}
	public String getBlindOrNot()
	{
		return blindOrNot;
	}
	public void setBlindOrNot(String blindOrNot)
	{
		this.blindOrNot = blindOrNot;
	}
	public String getOpenerAcctCode()
	{
		return openerAcctCode;
	}
	public void setOpenerAcctCode(String openerAcctCode)
	{
		this.openerAcctCode = openerAcctCode;
	}
	public String getReturnValue()
	{
		return returnValue;
	}
	public void setReturnValue(String returnValue)
	{
		this.returnValue = returnValue;
	}
	
	
	
	
	
}
