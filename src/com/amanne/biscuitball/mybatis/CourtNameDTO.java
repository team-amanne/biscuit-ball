/*============================================
 	CourtNameDTO.java
 	생성일: 2020.07.20
 	최근수정일: 2020.07.21
=============================================*/

package com.amanne.biscuitball.mybatis;

public class CourtNameDTO 
{
	private String courtNameCode; 				// 코트이름코드
	private String courtName; 					// 코트이름
	private String courtNameRegisteredDate; 	// 코트이름등록일시
	private String courtCode; 					// 코트코드
	private String adminRegister; 				// 관리자등록여부
	private String registrantAccountCode; 		// 등록자계정코드
	private String registrantNickname; 			// 등록자닉네임
	private int pollCount; 						// 득표수
	private double pollRate; 					// 득표율
	private String courtNameStatus; 			// 상태
	private int rank; 							// 득표순위
	private String pollOrNot; 					// 투표 여부
	private String returnValue;
	
	public String getCourtNameCode() {
		return courtNameCode;
	}
	public void setCourtNameCode(String courtNameCode) {
		this.courtNameCode = courtNameCode;
	}
	public String getCourtName() {
		return courtName;
	}
	public void setCourtName(String courtName) {
		this.courtName = courtName;
	}
	public String getCourtNameRegisteredDate() {
		return courtNameRegisteredDate;
	}
	public void setCourtNameRegisteredDate(String courtNameRegisteredDate) {
		this.courtNameRegisteredDate = courtNameRegisteredDate;
	}
	public String getCourtCode() {
		return courtCode;
	}
	public void setCourtCode(String courtCode) {
		this.courtCode = courtCode;
	}
	public String isAdminRegister() {
		return adminRegister;
	}
	public void setAdminRegister(String adminRegister) {
		this.adminRegister = adminRegister;
	}
	public String getRegistrantAccountCode() {
		return registrantAccountCode;
	}
	public void setRegistrantAccountCode(String registrantAccountCode) {
		this.registrantAccountCode = registrantAccountCode;
	}
	public String getRegistrantNickname() {
		return registrantNickname;
	}
	public void setRegistrantNickname(String registrantNickname) {
		this.registrantNickname = registrantNickname;
	}
	public int getPollCount() {
		return pollCount;
	}
	public void setPollCount(int pollCount) {
		this.pollCount = pollCount;
	}
	public double getPollRate() {
		return pollRate;
	}
	public void setPollRate(double pollRate) {
		this.pollRate = pollRate;
	}
	public String getCourtNameStatus() {
		return courtNameStatus;
	}
	public void setCourtNameStatus(String courtNameStatus) {
		this.courtNameStatus = courtNameStatus;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	public String getPollOrNot() {
		return pollOrNot;
	}
	public void setPollOrNot(String pollOrNot) {
		this.pollOrNot = pollOrNot;
	}
	public String isReturnValue() {
		return returnValue;
	}
	public void setReturnValue(String returnValue) {
		this.returnValue = returnValue;
	}
	
}
