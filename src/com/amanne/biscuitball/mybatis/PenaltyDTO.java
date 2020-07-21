/*============================================
 	PenaltyDTO.java
 	생성일: 2020.07.20
 	최근수정일: 2020.07.21
=============================================*/

package com.amanne.biscuitball.mybatis;

public class PenaltyDTO 
{
	private String penaltyCode; 		// 제재 번호
	private String penaltyStartDate; 	// 제재 시작일시
	private String penaltyEndDate; 		// 제재 종료일시
	private String reportResolveCode; 	// 신고 처리 완료 번호
	private String penaltyReasonCode; 	// 제재 사유 번호
	private String penaltyReason; 		// 제재 사유
	private String reportContentCode; 	// 신고 콘텐츠 코드
	private String reportContentType; 	// 신고 콘텐츠 타입
	private String returnValue;
	
	public String getPenaltyCode() {
		return penaltyCode;
	}
	public void setPenaltyCode(String penaltyCode) {
		this.penaltyCode = penaltyCode;
	}
	public String getPenaltyStartDate() {
		return penaltyStartDate;
	}
	public void setPenaltyStartDate(String penaltyStartDate) {
		this.penaltyStartDate = penaltyStartDate;
	}
	public String getPenaltyEndDate() {
		return penaltyEndDate;
	}
	public void setPenaltyEndDate(String penaltyEndDate) {
		this.penaltyEndDate = penaltyEndDate;
	}
	public String getReportResolveCode() {
		return reportResolveCode;
	}
	public void setReportResolveCode(String reportResolveCode) {
		this.reportResolveCode = reportResolveCode;
	}
	public String getPenaltyReasonCode() {
		return penaltyReasonCode;
	}
	public void setPenaltyReasonCode(String penaltyReasonCode) {
		this.penaltyReasonCode = penaltyReasonCode;
	}
	public String getPenaltyReason() {
		return penaltyReason;
	}
	public void setPenaltyReason(String penaltyReason) {
		this.penaltyReason = penaltyReason;
	}
	public String getReportContentCode() {
		return reportContentCode;
	}
	public void setReportContentCode(String reportContentCode) {
		this.reportContentCode = reportContentCode;
	}
	public String getReportContentType() {
		return reportContentType;
	}
	public void setReportContentType(String reportContentType) {
		this.reportContentType = reportContentType;
	}
	public String isReturnValue() {
		return returnValue;
	}
	public void setReturnValue(String returnValue) {
		this.returnValue = returnValue;
	}
}
