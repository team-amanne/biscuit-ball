/*============================================
 	ReportCourtReviewDTO.java
 	생성일: 2020.07.20
 	최근수정일: 2020.07.21
=============================================*/

package com.amanne.biscuitball.mybatis;

public class ReportCourtReviewDTO 
{
	private String reportType; 						// 신고타입
	private String courtReviewReportCode; 			// 신고코드
	private String courtReviewReportContent; 		// 신고내용
	private String courtReviewReportAcceptedDate; 	// 신고날짜
	private String subjectCourtReviewCode; 			// 신고리뷰코드
	private String subjectCourtReviewContent; 		// 신고리뷰내용
	private String applicantAccountCode; 			// 신고자-유저코드
	private String applicantUserNickname; 			// 신고자-유저닉네임
	private String applicantAdminCode; 				// 신고자-관리자코드
	private String applicantAdminNickname; 			// 신고자-관리자닉네임
	private String courtReviewReportAssignmentCode; // 담당코드
	private String courtReviewReportAssignedDate; 	// 담당일
	private String assignedAdminCode; 				// 담당자 코드
	private String assignedAdminNickname; 			// 담당자 닉네임
	private String courtReviewReportAnswerCode; 	// 신고답변코드
	private String courtReviewReportAnswerContent; 	// 신고답변내용
	private String courtReviewReportResolveCode; 	// 신고처리코드
	private String courtReviewReportResolvedDate; 	// 신고처리날짜
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
	public String getCourtReviewReportCode() {
		return courtReviewReportCode;
	}
	public void setCourtReviewReportCode(String courtReviewReportCode) {
		this.courtReviewReportCode = courtReviewReportCode;
	}
	public String getCourtReviewReportContent() {
		return courtReviewReportContent;
	}
	public void setCourtReviewReportContent(String courtReviewReportContent) {
		this.courtReviewReportContent = courtReviewReportContent;
	}
	public String getCourtReviewReportAcceptedDate() {
		return courtReviewReportAcceptedDate;
	}
	public void setCourtReviewReportAcceptedDate(String courtReviewReportAcceptedDate) {
		this.courtReviewReportAcceptedDate = courtReviewReportAcceptedDate;
	}
	public String getSubjectCourtReviewCode() {
		return subjectCourtReviewCode;
	}
	public void setSubjectCourtReviewCode(String subjectCourtReviewCode) {
		this.subjectCourtReviewCode = subjectCourtReviewCode;
	}
	public String getSubjectCourtReviewContent() {
		return subjectCourtReviewContent;
	}
	public void setSubjectCourtReviewContent(String subjectCourtReviewContent) {
		this.subjectCourtReviewContent = subjectCourtReviewContent;
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
	public String getCourtReviewReportAssignmentCode() {
		return courtReviewReportAssignmentCode;
	}
	public void setCourtReviewReportAssignmentCode(String courtReviewReportAssignmentCode) {
		this.courtReviewReportAssignmentCode = courtReviewReportAssignmentCode;
	}
	public String getCourtReviewReportAssignedDate() {
		return courtReviewReportAssignedDate;
	}
	public void setCourtReviewReportAssignedDate(String courtReviewReportAssignedDate) {
		this.courtReviewReportAssignedDate = courtReviewReportAssignedDate;
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
	public String getCourtReviewReportAnswerCode() {
		return courtReviewReportAnswerCode;
	}
	public void setCourtReviewReportAnswerCode(String courtReviewReportAnswerCode) {
		this.courtReviewReportAnswerCode = courtReviewReportAnswerCode;
	}
	public String getCourtReviewReportAnswerContent() {
		return courtReviewReportAnswerContent;
	}
	public void setCourtReviewReportAnswerContent(String courtReviewReportAnswerContent) {
		this.courtReviewReportAnswerContent = courtReviewReportAnswerContent;
	}
	public String getCourtReviewReportResolveCode() {
		return courtReviewReportResolveCode;
	}
	public void setCourtReviewReportResolveCode(String courtReviewReportResolveCode) {
		this.courtReviewReportResolveCode = courtReviewReportResolveCode;
	}
	public String getCourtReviewReportResolvedDate() {
		return courtReviewReportResolvedDate;
	}
	public void setCourtReviewReportResolvedDate(String courtReviewReportResolvedDate) {
		this.courtReviewReportResolvedDate = courtReviewReportResolvedDate;
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
