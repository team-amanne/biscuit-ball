package com.amanne.biscuitball.mybatis;

public class InquiryDTO {

	private String	inquiryCode;			//	문의등록번호	
	private String	inquirySubject;			//	문의제목	
	private String	inquiryContent;			//	문의내용	
	private String	inquiryAcceptedDate;		//	문의접수일시	
	private String	postCategoryCode;		//	게시물 카테고리 번호	
	private String	postCategoryName;		//	게시물 카테고리 명	
	private String	inquirerAccountCode;	//	회원계정매핑번호(문의자)	
	private String	inquirerNickname;		//	문의자 닉네임	
	private String	assignedAdminCode;		//	담당자 코드	
	private String	assignedAdminNickname;	//	담당자 닉네임	
	private String	inquiryAnswerContent;	//	문의답변내용	
	private String	inquiryAnswerCode;		//	문의답변코드	
	private String	inquiryStatus;			//	문의상태
	
	public String getInquiryCode() {
		return inquiryCode;
	}
	public void setInquiryCode(String inquiryCode) {
		this.inquiryCode = inquiryCode;
	}
	public String getInquirySubject() {
		return inquirySubject;
	}
	public void setInquirySubject(String inquirySubject) {
		this.inquirySubject = inquirySubject;
	}
	public String getInquiryContent() {
		return inquiryContent;
	}
	public void setInquiryContent(String inquiryContent) {
		this.inquiryContent = inquiryContent;
	}
	public String getInquiryAcceptedDate() {
		return inquiryAcceptedDate;
	}
	public void setInquiryAcceptedDate(String inquiryAcceptedDate) {
		this.inquiryAcceptedDate = inquiryAcceptedDate;
	}
	public String getPostCategoryCode() {
		return postCategoryCode;
	}
	public void setPostCategoryCode(String postCategoryCode) {
		this.postCategoryCode = postCategoryCode;
	}
	public String getPostCategoryName() {
		return postCategoryName;
	}
	public void setPostCategoryName(String postCategoryName) {
		this.postCategoryName = postCategoryName;
	}
	public String getInquirerAccountCode() {
		return inquirerAccountCode;
	}
	public void setInquirerAccountCode(String inquirerAccountCode) {
		this.inquirerAccountCode = inquirerAccountCode;
	}
	public String getInquirerNickname() {
		return inquirerNickname;
	}
	public void setInquirerNickname(String inquirerNickname) {
		this.inquirerNickname = inquirerNickname;
	}
	public String getAssignedAdminCode() {
		return assignedAdminCode;
	}
	public void setAssignedAdminCode(String assignedAdminCode) {
		this.assignedAdminCode = assignedAdminCode;
	}
	public String getAssignedAdminNickname() {
		return assignedAdminNickname;
	}
	public void setAssignedAdminNickname(String assignedAdminNickname) {
		this.assignedAdminNickname = assignedAdminNickname;
	}
	public String getInquiryAnswerContent() {
		return inquiryAnswerContent;
	}
	public void setInquiryAnswerContent(String inquiryAnswerContent) {
		this.inquiryAnswerContent = inquiryAnswerContent;
	}
	public String getInquiryAnswerCode() {
		return inquiryAnswerCode;
	}
	public void setInquiryAnswerCode(String inquiryAnswerCode) {
		this.inquiryAnswerCode = inquiryAnswerCode;
	}
	public String getInquiryStatus() {
		return inquiryStatus;
	}
	public void setInquiryStatus(String inquiryStatus) {
		this.inquiryStatus = inquiryStatus;
	}
}
