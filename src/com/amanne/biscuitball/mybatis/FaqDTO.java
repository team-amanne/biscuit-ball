/*============================================
 	FaqDTO.java
 	2020.07.30
=============================================*/

package com.amanne.biscuitball.mybatis;

public class FaqDTO
{

	private String faqCode; 				// �����ڵ�
	private String faqSubjec; 				// ��������
	private String faqContent; 				// ��������
	private String registeredDate;			// ����Ͻ�
	private String authorAdminCode; 		// ��ϰ������ڵ�
	private String authorAdminNickname; 	// ��ϰ����ڴг���
	private String categoryCode; 			// ī�װ��ڵ�
	private String categoryName; 			// ī�װ� �̸�

	public String getFaqCode()
	{
		return faqCode;
	}

	public void setFaqCode(String faqCode)
	{
		this.faqCode = faqCode;
	}

	public String getFaqSubjec()
	{
		return faqSubjec;
	}

	public void setFaqSubjec(String faqSubjec)
	{
		this.faqSubjec = faqSubjec;
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

}
