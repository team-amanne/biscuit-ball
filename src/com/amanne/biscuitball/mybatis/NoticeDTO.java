/*============================================
 	NoticeDTO.java
 	2020.07.30
=============================================*/

package com.amanne.biscuitball.mybatis;

public class NoticeDTO
{

	private String noticeCode; 			// �����ڵ�
	private String noticeSubject; 		// ��������
	private String noticeContent; 		// ��������
	private String registeredDate; 		// ����Ͻ�
	private String authorAdminCode;		// ��ϰ������ڵ�
	private String authorAdminNickname; // ��ϰ����ڴг���

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

}
