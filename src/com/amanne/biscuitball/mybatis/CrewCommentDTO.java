/*============================================
 	CrewCommentDTO.java
 	생성일: 2020.07.20
 	최근수정일: 2020.07.21
=============================================*/

package com.amanne.biscuitball.mybatis;

public class CrewCommentDTO 
{
	private String crewCommentCode; 			// 크루댓글코드
	private String crewPostCode; 				// 댓글이 달린 크루게시물코드
	private String parentCommentCode; 			// 최상위 댓글 코드
	private String crewCommentContent; 			// 크루댓글내용
	private String crewCommentRegisteredDate; 	// 작성일시
	private String authorMemberCode; 			// 작성자멤버코드
	private String authorAccountCode; 			// 작성자계정코드
	private String authorNickname; 				// 작성자닉네임
	private String crewCommentUpdateDate; 		// 갱신일시
	private String crewCommentDelDate; 			// 삭제일시
	private String crewCommentStatus; 			// 댓글상태
	private boolean returnValue;
	
	public String getCrewCommentCode() {
		return crewCommentCode;
	}
	public void setCrewCommentCode(String crewCommentCode) {
		this.crewCommentCode = crewCommentCode;
	}
	public String getCrewPostCode() {
		return crewPostCode;
	}
	public void setCrewPostCode(String crewPostCode) {
		this.crewPostCode = crewPostCode;
	}
	public String getParentCommentCode() {
		return parentCommentCode;
	}
	public void setParentCommentCode(String parentCommentCode) {
		this.parentCommentCode = parentCommentCode;
	}
	public String getCrewCommentContent() {
		return crewCommentContent;
	}
	public void setCrewCommentContent(String crewCommentContent) {
		this.crewCommentContent = crewCommentContent;
	}
	public String getCrewCommentRegisteredDate() {
		return crewCommentRegisteredDate;
	}
	public void setCrewCommentRegisteredDate(String crewCommentRegisteredDate) {
		this.crewCommentRegisteredDate = crewCommentRegisteredDate;
	}
	public String getAuthorMemberCode() {
		return authorMemberCode;
	}
	public void setAuthorMemberCode(String authorMemberCode) {
		this.authorMemberCode = authorMemberCode;
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
	public String getCrewCommentUpdateDate() {
		return crewCommentUpdateDate;
	}
	public void setCrewCommentUpdateDate(String crewCommentUpdateDate) {
		this.crewCommentUpdateDate = crewCommentUpdateDate;
	}
	public String getCrewCommentDelDate() {
		return crewCommentDelDate;
	}
	public void setCrewCommentDelDate(String crewCommentDelDate) {
		this.crewCommentDelDate = crewCommentDelDate;
	}
	public String getCrewCommentStatus() {
		return crewCommentStatus;
	}
	public void setCrewCommentStatus(String crewCommentStatus) {
		this.crewCommentStatus = crewCommentStatus;
	}
	public boolean isReturnValue() {
		return returnValue;
	}
	public void setReturnValue(boolean returnValue) {
		this.returnValue = returnValue;
	}
}
