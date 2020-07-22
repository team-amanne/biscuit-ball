package com.amanne.biscuitball.mybatis;

public class CourtDeleteRequestDTO 
{
	private String courtDeleteRequestCode;
	private String courtCode;
	private String applicantAccountCode;
	private String requestedDate;
	private String courtDeleteRequestApproveCode;
	private String approvedDate;
	private String approvedAdminCode;
	private String requestResultCode;
	private String returnValue;
	
	public String getCourtDeleteRequestCode() {
		return courtDeleteRequestCode;
	}
	public void setCourtDeleteRequestCode(String courtDeleteRequestCode) {
		this.courtDeleteRequestCode = courtDeleteRequestCode;
	}
	public String getCourtCode() {
		return courtCode;
	}
	public void setCourtCode(String courtCode) {
		this.courtCode = courtCode;
	}
	public String getApplicantAccountCode() {
		return applicantAccountCode;
	}
	public void setApplicantAccountCode(String applicantAccountCode) {
		this.applicantAccountCode = applicantAccountCode;
	}
	public String getRequestedDate() {
		return requestedDate;
	}
	public void setRequestedDate(String requestedDate) {
		this.requestedDate = requestedDate;
	}
	public String getCourtDeleteRequestApproveCode() {
		return courtDeleteRequestApproveCode;
	}
	public void setCourtDeleteRequestApproveCode(String courtDeleteRequestApproveCode) {
		this.courtDeleteRequestApproveCode = courtDeleteRequestApproveCode;
	}
	public String getApprovedDate() {
		return approvedDate;
	}
	public void setApprovedDate(String approvedDate) {
		this.approvedDate = approvedDate;
	}
	public String getApprovedAdminCode() {
		return approvedAdminCode;
	}
	public void setApprovedAdminCode(String approvedAdminCode) {
		this.approvedAdminCode = approvedAdminCode;
	}
	public String getRequestResultCode() {
		return requestResultCode;
	}
	public void setRequestResultCode(String requestResultCode) {
		this.requestResultCode = requestResultCode;
	}
	public String getReturnValue() {
		return returnValue;
	}
	public void setReturnValue(String returnValue) {
		this.returnValue = returnValue;
	}
}
