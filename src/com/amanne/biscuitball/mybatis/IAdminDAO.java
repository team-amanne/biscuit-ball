/*============================================
 	IAdminDAO.java
 	생성일: 2020.07.20
 	최근수정일: 2020.07.20
=============================================*/

package com.amanne.biscuitball.mybatis;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

public interface IAdminDAO 
{
	public int addNotice(NoticeDTO dto); // 공지사항등록

	public int updateNotice(NoticeDTO dto); // 공지사항수정

	public int removeNotice(String noticeCode); // 공지사항삭제

	public int addFaq(FaqDTO dto); // FAQ등록

	public int updateFaq(FaqDTO dto); // FAQ수정

	public int removeFaq(String faqCode); // FAQ삭제

	public int registerAdmin(AdminDTO dto); // 관리자계정등록

	public int updateAdmin(AdminDTO dto); // 관리자계정수정

	public int removeAdmin(String adminCode); // 관리자계정삭제

	public String changeInquiryToReport(@Param("reportType") String reportType, @Param("inqDto") InquiryDTO dto); // 관리자문의신고전환

	public int addReportUser(ReportUserDTO reportUserDTO); // 회원신고

	public int addReportUserAssignment(ReportUserDTO reportUserDTO); // 회원신고담당

	public int addReportUserAnswer(ReportUserDTO reportUserDTO); // 회원신고답변

	public int updateReportUserAnswer(ReportUserDTO reportUserDTO); // 회원신고답변수정

	public void addReportUserResolve(ReportUserDTO reportUserDTO); // 회원신고처리

	public int addReportUserPenalty(PenaltyDTO penaltyDTO); // (신고처리후)회원제재

	public int cancelReportUserPenalty(String penaltyCode); // 회원제재취소

	public int cancelReportUser(String userReportCode); // 신고취소

	public int addReportCrew(ReportCrewDTO reportCrewDTO); // 크루신고

	public int addReportCrewAssignment(ReportCrewDTO reportCrewDTO); // 크루신고담당

	public int addReportCrewAnswer(ReportCrewDTO reportCrewDTO); // 크루신고답변

	public int updateReportCrewAnswer(ReportCrewDTO reportCrewDTO); // 크루신고답변수정

	public void addReportCrewResolve(ReportCrewDTO reportCrewDTO); // 크루신고처리

	public int addReportCrewPenalty(PenaltyDTO penaltyDTO); // 크루제재

	public int cancelReportCrewPenalty(String penaltyCode); // 크루제재취소

	public int cancelReportCrew(String crewReportCode); // 신고취소

	public int addReportCrewPost(ReportCrewPostDTO reportCrewPostDTO); // 크루게시글신고

	public int addReportCrewPostAssignment(ReportCrewPostDTO reportCrewPostDTO); // 신고담당

	public int addReportCrewPostAnswer(ReportCrewPostDTO reportCrewPostDTO); // 신고답변

	public int updateReportCrewPostAnswer(ReportCrewPostDTO reportCrewPostDTO); // 신고답변수정

	public void addReportCrewPostResolve(ReportCrewPostDTO reportCrewPostDTO); // 신고처리

	public int addReportCrewPostPenalty(PenaltyDTO penaltyDTO); // 크루게시글제재

	public int cancelReportCrewPostPenalty(String penaltyCode); // 제재취소

	public int cancelReportCrewPost(String crewPostReportCode); // 신고취소

	public int addReportCrewComment(ReportCrewCommentDTO reportCommentDTO); // 크루댓글 신고

	public int addReportCrewCommentAssignment(ReportCrewCommentDTO reportCommentDTO); // 신고담당

	public int addReportCrewCommentAnswer(ReportCrewCommentDTO reportCommentDTO); // 신고답변

	public int updateReportCrewCommentAnswer(ReportCrewCommentDTO reportCommentDTO); // 신고답변수정

	public void addReportCrewCommentResolve(ReportCrewCommentDTO reportCommentDTO); // 신고처리

	public int addReportCrewCommentPenalty(PenaltyDTO penaltyDTO); // 크루댓글제재

	public int cancelReportCrewCommentPenalty(String penaltyCode); // 제재취소

	public int cancelReportCrewComment(String crewCommentReportCode); // 신고취소

	public int addReportMeet(ReportMeetDTO reportMeetDTO); // 모임신고

	public int addReportMeetAssignment(ReportMeetDTO reportMeetDTO); // 신고담당

	public int addReportMeetAnswer(ReportMeetDTO reportMeetDTO); // 신고답변

	public int updateReportMeetAnswer(ReportMeetDTO reportMeetDTO); // 신고답변수정

	public void addReportMeetResolve(ReportMeetDTO reportMeetDTO); // 신고처리

	public int addReportMeetPenalty(PenaltyDTO penaltyDTO); // 모임제재

	public int cancelReportMeetPenalty(String penaltyCode); // 제재취소

	public int cancelReportMeet(String meetReportCode); // 신고취소

	public int addReportMeetComment(ReportMeetCommentDTO reportMeetCommentDTO); // 모임댓글신고

	public int addReportMeetCommentAssignment(ReportMeetCommentDTO reportMeetCommentDTO); // 신고담당

	public int addReportMeetCommentAnswer(ReportMeetCommentDTO reportMeetCommentDTO); // 신고답변

	public int updateReportMeetCommentAnswer(ReportMeetCommentDTO reportMeetCommentDTO); // 신고답변수정

	public void addReportMeetCommentResolve(ReportMeetCommentDTO reportMeetCommentDTO); // 신고처리

	public int addReportMeetCommentPenalty(PenaltyDTO penaltyDTO); // 모임댓글제재

	public int cancelReportMeetCommentPenalty(String penaltyCode); // 제재취소

	public int cancelReportMeetComment(String meetCommentReportCode); // 신고취소

	public int addReportCourtName(ReportCourtNameDTO reportCourtNameDTO); // 코트이름신고

	public int addReportCourtNameAssignment(ReportCourtNameDTO reportCourtNameDTO); // 신고담당

	public int addReportCourtNameAnswer(ReportCourtNameDTO reportCourtNameDTO); // 신고답변

	public int updateReportCourtNameAnswer(ReportCourtNameDTO reportCourtNameDTO); // 신고답변수정

	public void addReportCourtNameResolve(ReportCourtNameDTO reportCourtNameDTO); // 신고처리

	public int addReportCourtNamePenalty(PenaltyDTO penaltyDTO); // 코트이름제재

	public int cancelReportCourtNamePenalty(String penaltyCode); // 제재취소

	public int cancelReportCourtName(String courtNameReportCode); // 신고취소

	public int addReportCourtReview(ReportCourtReviewDTO reportCourtReviewDTO); // 코트리뷰신고

	public int addReportCourtReviewAssignment(ReportCourtReviewDTO reportCourtReviewDTO); // 신고담당

	public int addReportCourtReviewAnswer(ReportCourtReviewDTO reportCourtReviewDTO); // 신고답변

	public int updateReportCourtReviewAnswer(ReportCourtReviewDTO reportCourtReviewDTO); // 신고답변수정

	public void addReportCourtReviewResolve(ReportCourtReviewDTO reportCourtReviewDTO); // 신고처리

	public int addReportCourtReviewPenalty(PenaltyDTO penaltyDTO); // 코트이름제재

	public int cancelReportCourtReviewPenalty(String penaltyCode); // 제재취소

	public int cancelReportCourtReview(String courtReviewReportCode); // 신고취소

	public int addInquiry(InquiryDTO inquiryDTO); // 문의입력

	public int addInquiryAssignment(InquiryDTO inquiryDTO); // 문의담당

	public int addInquiryAnswer(InquiryDTO inquiryDTO); // 문의답변

	public int updateInquiryAnswer(InquiryDTO inquiryDTO); // 문의답변수정

	public void addInquiryResolve(InquiryDTO inquiryDTO); // 문의처리

	public int removeInquiry(String inquiryCode); // 문의취소

	public void makeUserPenalty(PenaltyDTO dto); // 관리자 회원 제재

	public void makeCrewPenalty(PenaltyDTO dto); // 관리자 크루 제재

	public void makeCrewPostPenalty(PenaltyDTO dto); // 관리자 크루 게시판 제재

	public void makeCrewCommentPenalty(PenaltyDTO dto); // 관리자 크루 댓글 제재

	public void makeMeetPenalty(PenaltyDTO dto); // 관리자 모임 제재

	public void makeMeetCommentPenalty(PenaltyDTO dto); // 관리자 모임 댓글 제재

	public void makeCourtNamePenalty(PenaltyDTO dto); // 관리자 코트 이름 제재

	public void makeCourtReviewPenalty(PenaltyDTO dto); // 관리자 코트 리뷰 제재

	public ArrayList<NoticeDTO> getNoticeList(@Param("searchKey") String searchKey, @Param("searchValue") String searchValue, @Param("start") int start, @Param("end") int end); // 공지사항 조회

	public int countNotices(@Param("searchKey") String searchKey, @Param("searchValue") String searchValue); // 공지사항 전체 수

	public NoticeDTO getNotice(String noticeCode); // 특정 공지 조회

	public ArrayList<FaqDTO> getFaqList(@Param("searchKey") String searchKey, @Param("searchValue") String searchValue, @Param("start") int start, @Param("end") int end); // FAQ 조회

	public int countFaqs(@Param("searchKey") String searchKey, @Param("searchValue") String searchValue); // FAQ 전체 수

	public FaqDTO getFaq(String faqCode); // 특정 FAQ 조회

	public ArrayList<ReportTotalDTO> getReportList(@Param("searchKey") String searchKey, @Param("searchValue") String searchValue, @Param("start") int start, @Param("end") int end); // 전체 신고 조회

	public int countReports(@Param("searchKey") String searchKey, @Param("searchValue") String searchValue); // 전체 신고 수

	public ArrayList<InquiryDTO> getInquiryList(@Param("searchKey") String searchKey, @Param("searchValue") String searchValue, @Param("start") int start, @Param("end") int end); // 전체 문의 조회

	public int countInquiries(@Param("searchKey") String searchKey, @Param("searchValue") String searchValue); // 전체 문의 수

	public InquiryDTO getInquiry(String inquiryCode); // 특정 문의 조회

	public ReportUserDTO getUserReport(String reportCode); // 특정 회원신고 조회

	public ReportCrewDTO getCrewReport(String reportCode); // 특정 크루신고 조회

	public ReportCrewPostDTO getCrewPostReport(String reportCode); // 특정 크루게시글신고 조회

	public ReportCrewCommentDTO getCrewCommentReport(String reportCode); // 특정 크루댓글신고 조회

	public ReportMeetDTO getMeetingReport(String reportCode); // 특정 모임신고 조회

	public ReportMeetCommentDTO getMeetingCommentReport(String reportCode); // 특정 모임댓글신고 조회

	public ReportCourtReviewDTO getCourtReviewReport(String reportCode); // 특정 코트리뷰신고 조회

	public ReportCourtNameDTO getCourtNameReport(String reportCode); // 특정 코트이름신고 조회
	
	public ArrayList<AdminDTO> getAdminList(@Param("searchKey") String searchKey, @Param("searchValue") String searchValue, @Param("start") int start, @Param("end") int end); // 전체 관리자
	
	public int countAdmins(@Param("searchKey") String searchKey, @Param("searchValue") String searchValue); // 전체 관리자 수
	
	public AdminDTO getAdmin(String adminCode);
}
