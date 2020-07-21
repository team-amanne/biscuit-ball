/*============================================
	FaqDTO.java
 	생성일: 2020.07.20
 	최근수정일: 2020.07.21
=============================================*/

package com.amanne.biscuitball.mybatis;

public class FaqDTO
{

	private String faqCode; 				// 공지코드
	private String faqSubject; 				// 공지제목
	private String faqContent; 				// 공지내용
	private String registeredDate;			// 등록일시
	private String authorAdminCode; 		// 등록관리자코드
	private String authorAdminNickname; 	// 등록관리자닉네임
	private String categoryCode; 			// 카테고리코드
	private String categoryName; 			// 카테고리 이름
	private boolean returnValue;

	public String getFaqCode()
	{
		return faqCode;
	}

	public void setFaqCode(String faqCode)
	{
		this.faqCode = faqCode;
	}

	public String getFaqSubject()
	{
		return faqSubject;
	}

	public void setFaqSubject(String faqSubject)
	{
		this.faqSubject = faqSubject;
	}

	public String getFaqContent()
	{
		return faqContent;
	}

	public void setFaqContent(String faqContent)
	{
		this.faqContent = faqContent;
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

	public String getCategoryCode()
	{
		return categoryCode;
	}

	public void setCategoryCode(String categoryCode)
	{
		this.categoryCode = categoryCode;
	}

	public String getCategoryName()
	{
		return categoryName;
	}

	public void setCategoryName(String categoryName)
	{
		this.categoryName = categoryName;
	}

	public boolean isReturnValue() {
		return returnValue;
	}

	public void setReturnValue(boolean returnValue) {
		this.returnValue = returnValue;
	}

}
