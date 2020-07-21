/*============================================
 	AdminDTO.java
 	생성일: 2020.07.20
    최근수정일: 2020.07.21
=============================================*/

package com.amanne.biscuitball.mybatis;

public class AdminDTO 
{
	private String adminCode; 		// 회원코드
	private String adminNickname; 	// 회원계정코드
	private String adminEmail; 		// 이메일
	private String adminPassword; 	// 비밀번호
	private boolean chiefAdmin; 	// 최고관리자여부
	private boolean returnValue;
	
	public String getAdminCode() {
		return adminCode;
	}
	public void setAdminCode(String adminCode) {
		this.adminCode = adminCode;
	}
	public String getAdminNickname() {
		return adminNickname;
	}
	public void setAdminNickname(String adminNickname) {
		this.adminNickname = adminNickname;
	}
	public String getAdminEmail() {
		return adminEmail;
	}
	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}
	public String getAdminPassword() {
		return adminPassword;
	}
	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}
	public boolean isChiefAdmin() {
		return chiefAdmin;
	}
	public void setChiefAdmin(boolean chiefAdmin) {
		this.chiefAdmin = chiefAdmin;
	}
	public boolean isReturnValue() {
		return returnValue;
	}
	public void setReturnValue(boolean returnValue) {
		this.returnValue = returnValue;
	}
}
