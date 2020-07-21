/*============================================
 	CrewPostDTO.java
 	생성일: 2020.07.20
 	최근수정일: 2020.07.21
=============================================*/

package com.amanne.biscuitball.mybatis;

import java.util.ArrayList;

public class CrewPostDTO 
{
	private String crewPostCode; // 크루게시물코드
	private String crewPostSubject; // 크루게시물제목
	private String crewPostContent; // 크루게시물내용
	private String crewPostRegisteredDate; // 작성일시
	private String authorMemberCode; // 작성자멤버코드
	private String authorAccountCode; // 작성자계정코드
	private String authorNickname; // 작성자닉네임
	private String crewPostUpdateDate; // 갱신일시
	private int crewPostHitcount; // 조회수
	private String crewPostDelDate; // 삭제일시
	private String crewPostStatus; // 게시물상태
	private ArrayList<CrewCommentDTO> crewCommentList; // 크루댓글 리스트
	private String returnValue;
	
	public String getCrewPostCode() {
		return crewPostCode;
	}
	public void setCrewPostCode(String crewPostCode) {
		this.crewPostCode = crewPostCode;
	}
	public String getCrewPostSubject() {
		return crewPostSubject;
	}
	public void setCrewPostSubject(String crewPostSubject) {
		this.crewPostSubject = crewPostSubject;
	}
	public String getCrewPostContent() {
		return crewPostContent;
	}
	public void setCrewPostContent(String crewPostContent) {
		this.crewPostContent = crewPostContent;
	}
	public String getCrewPostRegisteredDate() {
		return crewPostRegisteredDate;
	}
	public void setCrewPostRegisteredDate(String crewPostRegisteredDate) {
		this.crewPostRegisteredDate = crewPostRegisteredDate;
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
	public String getCrewPostUpdateDate() {
		return crewPostUpdateDate;
	}
	public void setCrewPostUpdateDate(String crewPostUpdateDate) {
		this.crewPostUpdateDate = crewPostUpdateDate;
	}
	public int getCrewPostHitcount() {
		return crewPostHitcount;
	}
	public void setCrewPostHitcount(int crewPostHitcount) {
		this.crewPostHitcount = crewPostHitcount;
	}
	public String getCrewPostDelDate() {
		return crewPostDelDate;
	}
	public void setCrewPostDelDate(String crewPostDelDate) {
		this.crewPostDelDate = crewPostDelDate;
	}
	public String getCrewPostStatus() {
		return crewPostStatus;
	}
	public void setCrewPostStatus(String crewPostStatus) {
		this.crewPostStatus = crewPostStatus;
	}
	public ArrayList<CrewCommentDTO> getCrewCommentList() {
		return crewCommentList;
	}
	public void setCrewCommentList(ArrayList<CrewCommentDTO> crewCommentList) {
		this.crewCommentList = crewCommentList;
	}
	public String isReturnValue() {
		return returnValue;
	}
	public void setReturnValue(String returnValue) {
		this.returnValue = returnValue;
	}
	
}
