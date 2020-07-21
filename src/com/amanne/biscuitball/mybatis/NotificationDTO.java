/*============================================
 	NotificationDTO.java
 	생성일: 2020.07.20
 	최근수정일: 2020.07.21
=============================================*/

package com.amanne.biscuitball.mybatis;

public class NotificationDTO 
{
	private String notificationCode; 		// 알림코드
	private String userAccountcode; 		// 알림받는 회원계정코드
	private String notificationTypeCode; 	// 알림종류코드
	private String notificationTypeName; 	// 알림종류명
	private String notificationContent; 	// 알림내용
	private String createDate; 				// 알림생성일시
	private String readDate; 				// 열람일시
	private String url; 					// 알림URL
	private String returnValue;
	
	public String getNotificationCode() {
		return notificationCode;
	}
	public void setNotificationCode(String notificationCode) {
		this.notificationCode = notificationCode;
	}
	public String getUserAccountcode() {
		return userAccountcode;
	}
	public void setUserAccountcode(String userAccountcode) {
		this.userAccountcode = userAccountcode;
	}
	public String getNotificationTypeCode() {
		return notificationTypeCode;
	}
	public void setNotificationTypeCode(String notificationTypeCode) {
		this.notificationTypeCode = notificationTypeCode;
	}
	public String getNotificationTypeName() {
		return notificationTypeName;
	}
	public void setNotificationTypeName(String notificationTypeName) {
		this.notificationTypeName = notificationTypeName;
	}
	public String getNotificationContent() {
		return notificationContent;
	}
	public void setNotificationContent(String notificationContent) {
		this.notificationContent = notificationContent;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public String getReadDate() {
		return readDate;
	}
	public void setReadDate(String readDate) {
		this.readDate = readDate;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String isReturnValue() {
		return returnValue;
	}
	public void setReturnValue(String returnValue) {
		this.returnValue = returnValue;
	}
	
}
