/*============================================
	CrewMemberDTO.java
 	생성일: 2020.07.20
 	최근수정일: 2020.07.21
=============================================*/

package com.amanne.biscuitball.mybatis;

public class CrewMemberDTO 
{
	private String crewMemberCode; 			// 크루멤버코드
	private String crewJoinDate; 			// 크루가입일시
	private String crewCode; 				// 크루코드
	private String crewName; 				// 크루이름
	private String memberAcctCode; 			// 멤버계정코드
	private String memberNickname; 			// 멤버닉네임
	private String leaderOrNot; 			// 리더여부
	private String crewJoinRequestCode; 	// 크루가입신청코드
	private String crewInvitationCode; 		// 크루초대코드
	private String requestedDate; 			// 신청/초대일시
	private String resultCode; 				// 결과코드
	private String fairplayScore; 			// 페어플레이점수
	private String tierCode; 				// 티어
	private String tierName; 				// 티어
	private String positionCode; 			// 선호포지션코드
	private String positionName; 			// 선호포지션명
	private String positionAbbr; 			// 선호포지션약칭
	private String returnValue;
	
	public String getCrewMemberCode() {
		return crewMemberCode;
	}
	public void setCrewMemberCode(String crewMemberCode) {
		this.crewMemberCode = crewMemberCode;
	}
	public String getCrewJoinDate() {
		return crewJoinDate;
	}
	public void setCrewJoinDate(String crewJoinDate) {
		this.crewJoinDate = crewJoinDate;
	}
	public String getCrewCode() {
		return crewCode;
	}
	public void setCrewCode(String crewCode) {
		this.crewCode = crewCode;
	}
	public String getCrewName() {
		return crewName;
	}
	public void setCrewName(String crewName) {
		this.crewName = crewName;
	}
	public String getMemberAcctCode() {
		return memberAcctCode;
	}
	public void setMemberAcctCode(String memberAcctCode) {
		this.memberAcctCode = memberAcctCode;
	}
	public String getMemberNickname() {
		return memberNickname;
	}
	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}
	public String isLeaderOrNot() {
		return leaderOrNot;
	}
	public void setLeaderOrNot(String leaderOrNot) {
		this.leaderOrNot = leaderOrNot;
	}
	public String getCrewJoinRequestCode() {
		return crewJoinRequestCode;
	}
	public void setCrewJoinRequestCode(String crewJoinRequestCode) {
		this.crewJoinRequestCode = crewJoinRequestCode;
	}
	public String getCrewInvitationCode() {
		return crewInvitationCode;
	}
	public void setCrewInvitationCode(String crewInvitationCode) {
		this.crewInvitationCode = crewInvitationCode;
	}
	public String getRequestedDate() {
		return requestedDate;
	}
	public void setRequestedDate(String requestedDate) {
		this.requestedDate = requestedDate;
	}
	public String getResultCode() {
		return resultCode;
	}
	public void setResultCode(String resultCode) {
		this.resultCode = resultCode;
	}
	public String getFairplayScore() {
		return fairplayScore;
	}
	public void setFairplayScore(String fairplayScore) {
		this.fairplayScore = fairplayScore;
	}
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
	public String getPositionCode() {
		return positionCode;
	}
	public void setPositionCode(String positionCode) {
		this.positionCode = positionCode;
	}
	public String getPositionName() {
		return positionName;
	}
	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}
	public String getPositionAbbr() {
		return positionAbbr;
	}
	public void setPositionAbbr(String positionAbbr) {
		this.positionAbbr = positionAbbr;
	}
	public String isReturnValue() {
		return returnValue;
	}
	public void setReturnValue(String returnValue) {
		this.returnValue = returnValue;
	}
}
