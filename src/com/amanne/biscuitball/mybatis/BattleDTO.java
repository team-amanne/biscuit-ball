/*============================================
 	BattleDTO.java
 	2020.07.30
=============================================*/
package com.amanne.biscuitball.mybatis;

import java.util.ArrayList;

public class BattleDTO
{

	private String battleRequestCode; 								// ������û�ڵ�
	private String battleRequestedDate; 							// ������û�Ͻ�
	private String battleRequestResolvedDate; 						// ������û�����Ͻ�
	private String battleDate; 										// �����Ͻ�
	private String battleModeCode; 									// ��������ڵ�
	private String battleMode; 										// �������
	private String battleCourtCode; 								// ������Ʈ�ڵ�
	private String battleCourtName; 								// ������Ʈ�̸�
	private String senderCrewCode; 									// ��ûũ���ڵ�
	private String receiverCrewCode; 								// ��û����ũ���ڵ�
	private String senderCrewName; 									// ��ûũ���
	private String receiverCrewName; 								// ��û����ũ���
	private String refereeMemberCode; 								// ���Ǹ���ڵ�
	private String refereeAccountCode; 								// ���ǰ����ڵ�
	private String refereeNickname; 								// ���Ǵг���
	private String battleAcceptTypeCode; 							// ��������/���/���������ڵ�
	private String battleAcceptType; 								// ��������/���/��������
	private String battleRequestCancelDate; 						// ��û����Ͻ�
	private String recosiderAnswerContent; 							// ������� �޽���
	private ArrayList<BattleJoinDTO> battleSenderJoinList; 			// ��ûũ�������������Ʈ
	private ArrayList<BattleJoinDTO> battleReceiverJoinList; 		// ��û����ũ�������������Ʈ
	private BattleLeaderPlaylogDTO senderBattleLeaderPlaylog; 		// �Է��� �����÷��̷α�(��û��ũ��)
	private BattleLeaderPlaylogDTO receiverBattleLeaderPlaylog; 	// �Է��� �����÷��̷α�(��û����ũ��)
	private BattleRefereePlaylogDTO battleRefereePlaylog; 			// �Է��� �����÷��̷α�

	public String getBattleRequestCode()
	{
		return battleRequestCode;
	}

	public void setBattleRequestCode(String battleRequestCode)
	{
		this.battleRequestCode = battleRequestCode;
	}

	public String getBattleRequestedDate()
	{
		return battleRequestedDate;
	}

	public void setBattleRequestedDate(String battleRequestedDate)
	{
		this.battleRequestedDate = battleRequestedDate;
	}

	public String getBattleRequestResolvedDate()
	{
		return battleRequestResolvedDate;
	}

	public void setBattleRequestResolvedDate(String battleRequestResolvedDate)
	{
		this.battleRequestResolvedDate = battleRequestResolvedDate;
	}

	public String getBattleDate()
	{
		return battleDate;
	}

	public void setBattleDate(String battleDate)
	{
		this.battleDate = battleDate;
	}

	public String getBattleModeCode()
	{
		return battleModeCode;
	}

	public void setBattleModeCode(String battleModeCode)
	{
		this.battleModeCode = battleModeCode;
	}

	public String getBattleMode()
	{
		return battleMode;
	}

	public void setBattleMode(String battleMode)
	{
		this.battleMode = battleMode;
	}

	public String getBattleCourtCode()
	{
		return battleCourtCode;
	}

	public void setBattleCourtCode(String battleCourtCode)
	{
		this.battleCourtCode = battleCourtCode;
	}

	public String getBattleCourtName()
	{
		return battleCourtName;
	}

	public void setBattleCourtName(String battleCourtName)
	{
		this.battleCourtName = battleCourtName;
	}

	public String getSenderCrewCode()
	{
		return senderCrewCode;
	}

	public void setSenderCrewCode(String senderCrewCode)
	{
		this.senderCrewCode = senderCrewCode;
	}

	public String getReceiverCrewCode()
	{
		return receiverCrewCode;
	}

	public void setReceiverCrewCode(String receiverCrewCode)
	{
		this.receiverCrewCode = receiverCrewCode;
	}

	public String getSenderCrewName()
	{
		return senderCrewName;
	}

	public void setSenderCrewName(String senderCrewName)
	{
		this.senderCrewName = senderCrewName;
	}

	public String getReceiverCrewName()
	{
		return receiverCrewName;
	}

	public void setReceiverCrewName(String receiverCrewName)
	{
		this.receiverCrewName = receiverCrewName;
	}

	public String getRefereeMemberCode()
	{
		return refereeMemberCode;
	}

	public void setRefereeMemberCode(String refereeMemberCode)
	{
		this.refereeMemberCode = refereeMemberCode;
	}

	public String getRefereeAccountCode()
	{
		return refereeAccountCode;
	}

	public void setRefereeAccountCode(String refereeAccountCode)
	{
		this.refereeAccountCode = refereeAccountCode;
	}

	public String getRefereeNickname()
	{
		return refereeNickname;
	}

	public void setRefereeNickname(String refereeNickname)
	{
		this.refereeNickname = refereeNickname;
	}

	public String getBattleAcceptTypeCode()
	{
		return battleAcceptTypeCode;
	}

	public void setBattleAcceptTypeCode(String battleAcceptTypeCode)
	{
		this.battleAcceptTypeCode = battleAcceptTypeCode;
	}

	public String getBattleAcceptType()
	{
		return battleAcceptType;
	}

	public void setBattleAcceptType(String battleAcceptType)
	{
		this.battleAcceptType = battleAcceptType;
	}

	public String getBattleRequestCancelDate()
	{
		return battleRequestCancelDate;
	}

	public void setBattleRequestCancelDate(String battleRequestCancelDate)
	{
		this.battleRequestCancelDate = battleRequestCancelDate;
	}

	public String getRecosiderAnswerContent()
	{
		return recosiderAnswerContent;
	}

	public void setRecosiderAnswerContent(String recosiderAnswerContent)
	{
		this.recosiderAnswerContent = recosiderAnswerContent;
	}

	public ArrayList<BattleJoinDTO> getBattleSenderJoinList()
	{
		return battleSenderJoinList;
	}

	public void setBattleSenderJoinList(ArrayList<BattleJoinDTO> battleSenderJoinList)
	{
		this.battleSenderJoinList = battleSenderJoinList;
	}

	public ArrayList<BattleJoinDTO> getBattleReceiverJoinList()
	{
		return battleReceiverJoinList;
	}

	public void setBattleReceiverJoinList(ArrayList<BattleJoinDTO> battleReceiverJoinList)
	{
		this.battleReceiverJoinList = battleReceiverJoinList;
	}

	public BattleLeaderPlaylogDTO getSenderBattleLeaderPlaylog()
	{
		return senderBattleLeaderPlaylog;
	}

	public void setSenderBattleLeaderPlaylog(BattleLeaderPlaylogDTO senderBattleLeaderPlaylog)
	{
		this.senderBattleLeaderPlaylog = senderBattleLeaderPlaylog;
	}

	public BattleLeaderPlaylogDTO getReceiverBattleLeaderPlaylog()
	{
		return receiverBattleLeaderPlaylog;
	}

	public void setReceiverBattleLeaderPlaylog(BattleLeaderPlaylogDTO receiverBattleLeaderPlaylog)
	{
		this.receiverBattleLeaderPlaylog = receiverBattleLeaderPlaylog;
	}

	public BattleRefereePlaylogDTO getBattleRefereePlaylog()
	{
		return battleRefereePlaylog;
	}

	public void setBattleRefereePlaylog(BattleRefereePlaylogDTO battleRefereePlaylog)
	{
		this.battleRefereePlaylog = battleRefereePlaylog;
	}

}
