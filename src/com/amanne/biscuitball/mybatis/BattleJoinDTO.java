/*============================================
 	BattleJoinDTO.java
 	생성일: 2020.07.20
 	최근수정일: 2020.07.21
=============================================*/

package com.amanne.biscuitball.mybatis;

public class BattleJoinDTO
{
	private String battleJoinCode; 			// 대전참가코드
	private String battleRequestCode; 		// 참가대전신청코드
	private String crewMemberCode; 			// 대전참가멤버코드
	private String joinMemberAccountCode; 	// 대전참가멤버계정코드
	private String joinMemberNickname; 		// 대전참가멤버닉네임
	private String returnValue;

	public String getBattleJoinCode()
	{
		return battleJoinCode;
	}

	public void setBattleJoinCode(String battleJoinCode)
	{
		this.battleJoinCode = battleJoinCode;
	}

	public String getBattleRequestCode()
	{
		return battleRequestCode;
	}

	public void setBattleRequestCode(String battleRequestCode)
	{
		this.battleRequestCode = battleRequestCode;
	}

	public String getCrewMemberCode()
	{
		return crewMemberCode;
	}

	public void setCrewMemberCode(String crewMemberCode)
	{
		this.crewMemberCode = crewMemberCode;
	}

	public String getJoinMemberAccountCode()
	{
		return joinMemberAccountCode;
	}

	public void setJoinMemberAccountCode(String joinMemberAccountCode)
	{
		this.joinMemberAccountCode = joinMemberAccountCode;
	}

	public String getJoinMemberNickname()
	{
		return joinMemberNickname;
	}

	public void setJoinMemberNickname(String joinMemberNickname)
	{
		this.joinMemberNickname = joinMemberNickname;
	}

	public String isReturnValue() {
		return returnValue;
	}

	public void setReturnValue(String returnValue) {
		this.returnValue = returnValue;
	}

}
