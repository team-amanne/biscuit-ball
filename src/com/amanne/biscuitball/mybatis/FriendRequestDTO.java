package com.amanne.biscuitball.mybatis;

public class FriendRequestDTO {
	private String friendRequestCode; 		// 친구요청코드
	private String senderAccountCode; 		// 친구신청요청자유저코드
	private String receiverAccountCode; 	// 친구신청대상자유저코드
	
	public String getFriendRequestCode() {
		return friendRequestCode;
	}
	public void setFriendRequestCode(String friendRequestCode) {
		this.friendRequestCode = friendRequestCode;
	}
	public String getSenderAccountCode() {
		return senderAccountCode;
	}
	public void setSenderAccountCode(String senderAccountCode) {
		this.senderAccountCode = senderAccountCode;
	}
	public String getReceiverAccountCode() {
		return receiverAccountCode;
	}
	public void setReceiverAccountCode(String receiverAccountCode) {
		this.receiverAccountCode = receiverAccountCode;
	}
}
