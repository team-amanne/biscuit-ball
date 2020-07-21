/*============================================
	NoticeDTO.java
 	생성일: 2020.07.20
 	최근수정일: 2020.07.21
=============================================*/

package com.amanne.biscuitball.mybatis;

public class NoticeDTO
{

	private String noticeCode; 			// 공지코드
	private String noticeSubject; 		// 공지제목
	private String noticeContent; 		// 공지내용
	private String registeredDate; 		// 등록일시
	private String authorAdminCode;		// 등록관리자코드
	private String authorAdminNickname; // 등록관리자닉네임
	private boolean returnValue;

	public String getNoticeCode()
	{
		return noticeCode;
	}

	public void setNoticeCode(String noticeCode)
	{
		this.noticeCode = noticeCode;
	}

	public String getNoticeSubject()
	{
		return noticeSubject;
	}

	public void setNoticeSubject(String noticeSubject)
	{
		this.noticeSubject = noticeSubject;
	}

	public String getNoticeContent()
	{
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent)
	{
		this.noticeContent = noticeContent;
	}

	public String getRegisteredDate()
	{
		return registeredDate;
	}

	public void setRegisteredDate(String registeredDate)
	{
		this.registeredDate = registeredDate;
	}

	public String getAuthorAdminCode()
	{
		return authorAdminCode;
	}

	public void setAuthorAdminCode(String authorAdminCode)
	{
		this.authorAdminCode = authorAdminCode;
	}

	public String getAuthorAdminNickname()
	{
		return authorAdminNickname;
	}

	public void setAuthorAdminNickname(String authorAdminNickname)
	{
		this.authorAdminNickname = authorAdminNickname;
	}

	public boolean isReturnValue() {
		return returnValue;
	}

	public void setReturnValue(boolean returnValue) {
		this.returnValue = returnValue;
	}

}
