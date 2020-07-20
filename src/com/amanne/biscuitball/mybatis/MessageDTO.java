package com.amanne.biscuitball.mybatis;

public class MessageDTO {

	private String	messageCode;			//	메시지생성코드	
	private String	senderAccountCode;		//	발신자계정코드	
	private String	senderNickname;			//	발신자닉네임	
	private String	receiverAccountCode;	//	수신자계정코드	
	private String	receiverNickname;		//	수신자닉네임	
	private String	messageSubject;			//	메시지제목	
	private String	messageContent;			//	메시지내용	
	private String	sendDate;				//	발신일시	
	private String	receiverReadDate;		//	수신자열람일시	
	private String	senderDelDate;			//	발신자삭제일시	
	private String	receiverDelDate;		//	수신자삭제일시	
	
	public String getMessageCode() {
		return messageCode;
	}
	public void setMessageCode(String messageCode) {
		this.messageCode = messageCode;
	}
	public String getSenderAccountCode() {
		return senderAccountCode;
	}
	public void setSenderAccountCode(String senderAccountCode) {
		this.senderAccountCode = senderAccountCode;
	}
	public String getSenderNickname() {
		return senderNickname;
	}
	public void setSenderNickname(String senderNickname) {
		this.senderNickname = senderNickname;
	}
	public String getReceiverAccountCode() {
		return receiverAccountCode;
	}
	public void setReceiverAccountCode(String receiverAccountCode) {
		this.receiverAccountCode = receiverAccountCode;
	}
	public String getReceiverNickname() {
		return receiverNickname;
	}
	public void setReceiverNickname(String receiverNickname) {
		this.receiverNickname = receiverNickname;
	}
	public String getMessageSubject() {
		return messageSubject;
	}
	public void setMessageSubject(String messageSubject) {
		this.messageSubject = messageSubject;
	}
	public String getMessageContent() {
		return messageContent;
	}
	public void setMessageContent(String messageContent) {
		this.messageContent = messageContent;
	}
	public String getSendDate() {
		return sendDate;
	}
	public void setSendDate(String sendDate) {
		this.sendDate = sendDate;
	}
	public String getReceiverReadDate() {
		return receiverReadDate;
	}
	public void setReceiverReadDate(String receiverReadDate) {
		this.receiverReadDate = receiverReadDate;
	}
	public String getSenderDelDate() {
		return senderDelDate;
	}
	public void setSenderDelDate(String senderDelDate) {
		this.senderDelDate = senderDelDate;
	}
	public String getReceiverDelDate() {
		return receiverDelDate;
	}
	public void setReceiverDelDate(String receiverDelDate) {
		this.receiverDelDate = receiverDelDate;
	}
}
