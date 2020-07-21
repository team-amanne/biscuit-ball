/*============================================
 	ReportTotalDTO.java
 	생성일: 2020.07.20
 	최근수정일: 2020.07.21
=============================================*/

package com.amanne.biscuitball.mybatis;

public class ReportTotalDTO 
{
	private String	reportType;				//	신고타입	
	private String	reportCode;				//	신고코드	
	private String	assignedAdminCode;		//	담당자 코드	
	private String	assignedAdminNickname;	//	담당자 닉네임	
	private String	reportAcceptedDate;		//	신고날짜	
	private String	reporterAccountCode;	//	신고자코드	
	private String	reporterNickname;		//	신고자닉네임	
	private String	reportAssignedDate;		//	신고담당자배정일	
	private String	reportStatus;			//	신고상태	
	private String	reportResolveDate;		//	신고처리날짜
	private boolean returnValue;
	
	public String getReportType() {
		return reportType;
	}
	public void setReportType(String reportType) {
		this.reportType = reportType;
	}
	public String getReportCode() {
		return reportCode;
	}
	public void setReportCode(String reportCode) {
		this.reportCode = reportCode;
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
	public String getReportAcceptedDate() {
		return reportAcceptedDate;
	}
	public void setReportAcceptedDate(String reportAcceptedDate) {
		this.reportAcceptedDate = reportAcceptedDate;
	}
	public String getReporterAccountCode() {
		return reporterAccountCode;
	}
	public void setReporterAccountCode(String reporterAccountCode) {
		this.reporterAccountCode = reporterAccountCode;
	}
	public String getReporterNickname() {
		return reporterNickname;
	}
	public void setReporterNickname(String reporterNickname) {
		this.reporterNickname = reporterNickname;
	}
	public String getReportAssignedDate() {
		return reportAssignedDate;
	}
	public void setReportAssignedDate(String reportAssignedDate) {
		this.reportAssignedDate = reportAssignedDate;
	}
	public String getReportStatus() {
		return reportStatus;
	}
	public void setReportStatus(String reportStatus) {
		this.reportStatus = reportStatus;
	}
	public String getReportResolveDate() {
		return reportResolveDate;
	}
	public void setReportResolveDate(String reportResolveDate) {
		this.reportResolveDate = reportResolveDate;
	}
	public boolean isReturnValue() {
		return returnValue;
	}
	public void setReturnValue(boolean returnValue) {
		this.returnValue = returnValue;
	}
	
}
