/*============================================
 	BattleDTO.java
 	생성일: 2020.07.20
 	최근수정일: 2020.07.21
=============================================*/

package com.amanne.biscuitball.mybatis;

import java.util.ArrayList;

public class BattleDTO
{

	private String battleRequestCode; 								// 대전신청코드
	private String battleRequestedDate; 							// 대전신청일시
	private String battleRequestResolvedDate; 						// 대전신청응답일시
	private String battleDate; 										// 대전일시
	private String battleModeCode; 									// 대전방식코드
	private String battleMode; 										// 대전방식
	private String battleCourtCode; 								// 대전코트코드
	private String battleCourtName; 								// 대전코트이름
	private String senderCrewCode; 									// 신청크루코드
	private String receiverCrewCode; 								// 신청받은크루코드
	private String senderCrewName; 									// 신청크루명
	private String receiverCrewName; 								// 신청받은크루명
	private String refereeMemberCode; 								// 심판멤버코드
	private String refereeAccountCode; 								// 심판계정코드
	private String refereeNickname; 								// 심판닉네임
	private String battleAcceptTypeCode; 							// 대전수락/재고/거절여부코드
	private String battleAcceptType; 								// 대전수락/재고/거절여부
	private String battleRequestCancelDate; 						// 신청취소일시
	private String recosiderAnswerContent; 							// 대전재고 메시지
	private ArrayList<BattleJoinDTO> battleSenderJoinList; 			// 신청크루참가멤버리스트
	private ArrayList<BattleJoinDTO> battleReceiverJoinList; 		// 신청받은크루참가멤버리스트
	private BattleLeaderPlaylogDTO senderBattleLeaderPlaylog; 		// 입력한 리더플레이로그(신청한크루)
	private BattleLeaderPlaylogDTO receiverBattleLeaderPlaylog; 	// 입력한 리더플레이로그(신청받은크루)
	private BattleRefereePlaylogDTO battleRefereePlaylog; 			// 입력한 심판플레이로그
	private boolean returnValue;

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

	public boolean isReturnValue() {
		return returnValue;
	}

	public void setReturnValue(boolean returnValue) {
		this.returnValue = returnValue;
	}

}
