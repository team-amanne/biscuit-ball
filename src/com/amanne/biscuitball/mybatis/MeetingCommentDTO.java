/*============================================
 	MeetingCommentDTO.java
 	생성일: 2020.07.20
 	최근수정일: 2020.07.21
=============================================*/

package com.amanne.biscuitball.mybatis;

public class MeetingCommentDTO 
{
	private String meetingCommentCode; 				// 모임댓글코드
	private String meetingCommentContent; 			// 모임댓글내용
	private String meetingCommentRegistrationDate; 	// 등록일시
	private String meetingCommentUpdateDate;		// 갱신일시
	private String meetingCommentDelDate; 			// 삭제일시
	private String authorMeetingJoinCode; 			// 등록자모임참가코드
	private String authorAccountCode; 				// 등록자계정코드
	private String authorNickname; 					// 등록자닉네임
	private String meetingCode; 					// 모임코드
	private String deletePossibleOrNot; 			// 삭제가능여부
	private String returnValue;
	
	public String getMeetingCommentCode() {
		return meetingCommentCode;
	}
	public void setMeetingCommentCode(String meetingCommentCode) {
		this.meetingCommentCode = meetingCommentCode;
	}
	public String getMeetingCommentContent() {
		return meetingCommentContent;
	}
	public void setMeetingCommentContent(String meetingCommentContent) {
		this.meetingCommentContent = meetingCommentContent;
	}
	public String getMeetingCommentRegistrationDate() {
		return meetingCommentRegistrationDate;
	}
	public void setMeetingCommentRegistrationDate(String meetingCommentRegistrationDate) {
		this.meetingCommentRegistrationDate = meetingCommentRegistrationDate;
	}
	public String getMeetingCommentUpdateDate() {
		return meetingCommentUpdateDate;
	}
	public void setMeetingCommentUpdateDate(String meetingCommentUpdateDate) {
		this.meetingCommentUpdateDate = meetingCommentUpdateDate;
	}
	public String getMeetingCommentDelDate() {
		return meetingCommentDelDate;
	}
	public void setMeetingCommentDelDate(String meetingCommentDelDate) {
		this.meetingCommentDelDate = meetingCommentDelDate;
	}
	public String getAuthorMeetingJoinCode() {
		return authorMeetingJoinCode;
	}
	public void setAuthorMeetingJoinCode(String authorMeetingJoinCode) {
		this.authorMeetingJoinCode = authorMeetingJoinCode;
	}
	public String getAuthorAccountCode() {
		return authorAccountCode;
	}
	public void setAuthorAccountCode(String authorAccountCode) {
		this.authorAccountCode = authorAccountCode;
	}
	public String getAuthorNickname() {
		return authorNickname;
	}
	public void setAuthorNickname(String authorNickname) {
		this.authorNickname = authorNickname;
	}
	public String getMeetingCode() {
		return meetingCode;
	}
	public void setMeetingCode(String meetingCode) {
		this.meetingCode = meetingCode;
	}
	public String isDeletePossibleOrNot() {
		return deletePossibleOrNot;
	}
	public void setDeletePossibleOrNot(String deletePossibleOrNot) {
		this.deletePossibleOrNot = deletePossibleOrNot;
	}
	public String isReturnValue() {
		return returnValue;
	}
	public void setReturnValue(String returnValue) {
		this.returnValue = returnValue;
	}
	
}
