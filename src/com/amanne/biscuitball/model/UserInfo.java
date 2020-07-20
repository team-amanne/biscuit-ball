package com.amanne.biscuitball.model;

public class UserInfo {
	private String	userCode;		//	회원코드	
	private String	userAcctCode;	//	회원계정코드	
	private String	userNickname;	//	닉네임	
	private String	crewCode;		//	소속크루코드	
	private String	crewMemberCode;	//	현재크루멤버코드	
	private String	userStatus;		//	제재상태
	
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
