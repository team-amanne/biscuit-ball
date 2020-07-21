/*============================================
 	ReportCrewCommentDTO.java
 	생성일: 2020.07.20
 	최근수정일: 2020.07.21
=============================================*/

package com.amanne.biscuitball.mybatis;

public class ReportCrewCommentDTO 
{

	private String reportType; 						// 신고타입
	private String crewCommentReportCode; 			// 신고코드
	private String crewCommentReportContent; 		// 신고내용
	private String crewCommentReportAcceptedDate; 	// 신고날짜
	private String crewPostCode; 					// 크루게시글코드
	private String subjectCrewCommentCode; 			// 신고크루댓글코드
	private String applicantAccountCode; 			// 신고자-유저코드
	private String applicantUserNickname; 			// 신고자-유저닉네임
	private String applicantAdminCode; 				// 신고자-관리자코드
	private String applicantAdminNickname; 			// 신고자-관리자닉네임
	private String crewCommentReportAssignmentCode; // 담당코드
	private String crewCommentReportAssignedDate; 	// 담당일
	private String assignedAdminCode; 				// 담당자 코드
	private String assignedAdminNickname; 			// 담당자 닉네임
	private String crewCommentReportAnswerCode; 	// 신고답변코드
	private String crewCommentReportAnswerContent; 	// 신고답변내용
	private String crewCommentReportResolveCode; 	// 신고처리코드
	private String crewCommentReportResolvedDate; 	// 신고처리날짜
	private String reportStatus; 					// 신고상태
	private String reportResultCode; 				// 신고결과코드
	private String reportResult; 					// 신고결과
	private boolean returnValue;
	
	public String getReportType() {
		return reportType;
	}
	public void setReportType(String reportType) {
		this.reportType = reportType;
	}
	public String getCrewCommentReportCode() {
		return crewCommentReportCode;
	}
	public void setCrewCommentReportCode(String crewCommentReportCode) {
		this.crewCommentReportCode = crewCommentReportCode;
	}
	public String getCrewCommentReportContent() {
		return crewCommentReportContent;
	}
	public void setCrewCommentReportContent(String crewCommentReportContent) {
		this.crewCommentReportContent = crewCommentReportContent;
	}
	public String getCrewCommentReportAcceptedDate() {
		return crewCommentReportAcceptedDate;
	}
	public void setCrewCommentReportAcceptedDate(String crewCommentReportAcceptedDate) {
		this.crewCommentReportAcceptedDate = crewCommentReportAcceptedDate;
	}
	public String getCrewPostCode() {
		return crewPostCode;
	}
	public void setCrewPostCode(String crewPostCode) {
		this.crewPostCode = crewPostCode;
	}
	public String getSubjectCrewCommentCode() {
		return subjectCrewCommentCode;
	}
	public void setSubjectCrewCommentCode(String subjectCrewCommentCode) {
		this.subjectCrewCommentCode = subjectCrewCommentCode;
	}
	public String getApplicantAccountCode() {
		return applicantAccountCode;
	}
	public void setApplicantAccountCode(String applicantAccountCode) {
		this.applicantAccountCode = applicantAccountCode;
	}
	public String getApplicantUserNickname() {
		return applicantUserNickname;
	}
	public void setApplicantUserNickname(String applicantUserNickname) {
		this.applicantUserNickname = applicantUserNickname;
	}
	public String getApplicantAdminCode() {
		return applicantAdminCode;
	}
	public void setApplicantAdminCode(String applicantAdminCode) {
		this.applicantAdminCode = applicantAdminCode;
	}
	public String getApplicantAdminNickname() {
		return applicantAdminNickname;
	}
	public void setApplicantAdminNickname(String applicantAdminNickname) {
		this.applicantAdminNickname = applicantAdminNickname;
	}
	public String getCrewCommentReportAssignmentCode() {
		return crewCommentReportAssignmentCode;
	}
	public void setCrewCommentReportAssignmentCode(String crewCommentReportAssignmentCode) {
		this.crewCommentReportAssignmentCode = crewCommentReportAssignmentCode;
	}
	public String getCrewCommentReportAssignedDate() {
		return crewCommentReportAssignedDate;
	}
	public void setCrewCommentReportAssignedDate(String crewCommentReportAssignedDate) {
		this.crewCommentReportAssignedDate = crewCommentReportAssignedDate;
	}
	public String getAssignedAdminCode() {
		return assignedAdminCode;
	}
	public void setAssignedAdminCode(String assignedAdminCode) {
		this.assignedAdminCode = assignedAdminCode;
	}
	public String getAssignedAdminNickname() {
		return assignedAdminNickname;
	}
	public void setAssignedAdminNickname(String assignedAdminNickname) {
		this.assignedAdminNickname = assignedAdminNickname;
	}
	public String getCrewCommentReportAnswerCode() {
		return crewCommentReportAnswerCode;
	}
	public void setCrewCommentReportAnswerCode(String crewCommentReportAnswerCode) {
		this.crewCommentReportAnswerCode = crewCommentReportAnswerCode;
	}
	public String getCrewCommentReportAnswerContent() {
		return crewCommentReportAnswerContent;
	}
	public void setCrewCommentReportAnswerContent(String crewCommentReportAnswerContent) {
		this.crewCommentReportAnswerContent = crewCommentReportAnswerContent;
	}
	public String getCrewCommentReportResolveCode() {
		return crewCommentReportResolveCode;
	}
	public void setCrewCommentReportResolveCode(String crewCommentReportResolveCode) {
		this.crewCommentReportResolveCode = crewCommentReportResolveCode;
	}
	public String getCrewCommentReportResolvedDate() {
		return crewCommentReportResolvedDate;
	}
	public void setCrewCommentReportResolvedDate(String crewCommentReportResolvedDate) {
		this.crewCommentReportResolvedDate = crewCommentReportResolvedDate;
	}
	public String getReportStatus() {
		return reportStatus;
	}
	public void setReportStatus(String reportStatus) {
		this.reportStatus = reportStatus;
	}
	public String getReportResultCode() {
		return reportResultCode;
	}
	public void setReportResultCode(String reportResultCode) {
		this.reportResultCode = reportResultCode;
	}
	public String getReportResult() {
		return reportResult;
	}
	public void setReportResult(String reportResult) {
		this.reportResult = reportResult;
	}
	public boolean isReturnValue() {
		return returnValue;
	}
	public void setReturnValue(boolean returnValue) {
		this.returnValue = returnValue;
	}
}
