/*============================================
 	BattleJoinDTO.java
 	2020.07.30
=============================================*/

package com.amanne.biscuitball.mybatis;

public class BattleJoinDTO
{
	private String battleJoinCode; 			// ���������ڵ�
	private String battleRequestCode; 		// ����������û�ڵ�
	private String crewMemberCode; 			// ������������ڵ�
	private String joinMemberAccountCode; 	// ����������������ڵ�
	private String joinMemberNickname; 		// ������������г���

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

}
