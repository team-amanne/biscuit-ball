/*============================================
 	UserInfo.java
 	생성일: 2020.07.20
 	최근수정일: 2020.07.20
=============================================*/

package com.amanne.biscuitball.model;

public class UserInfo 
{
	private String	userCode;		//	회원코드	
	private String	userAcctCode;	//	회원계정코드	
	private String	userNickname;	//	닉네임
	private String   tierCode;      //   실력코드
	private String   tierName;      //   실력등급   
	private String	crewCode;		//	소속크루코드	
	private String	crewMemberCode;	//	현재크루멤버코드	
	private String	userStatus;		//	제재상태
	
	public String getTierCode() {
		return tierCode;
	}
	public void setTierCode(String tierCode) {
		this.tierCode = tierCode;
	}
	public String getTierName() {
		return tierName;
	}
	public void setTierName(String tierName) {
		this.tierName = tierName;
	}
	
	public String getUserCode() {
		return userCode;
	}
	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}
	public String getUserAcctCode() {
		return userAcctCode;
	}
	public void setUserAcctCode(String userAcctCode) {
		this.userAcctCode = userAcctCode;
	}
	public String getUserNickname() {
		return userNickname;
	}
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}
	public String getCrewCode() {
		return crewCode;
	}
	public void setCrewCode(String crewCode) {
		this.crewCode = crewCode;
	}
	public String getCrewMemberCode() {
		return crewMemberCode;
	}
	public void setCrewMemberCode(String crewMemberCode) {
		this.crewMemberCode = crewMemberCode;
	}
	public String getUserStatus() {
		return userStatus;
	}
	public void setUserStatus(String userStatus) {
		this.userStatus = userStatus;
	}
}
