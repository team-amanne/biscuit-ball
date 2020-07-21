package com.amanne.biscuitball.mybatis;

import java.util.List;

public interface ICourtDAO
{
	public int registerCourt(CourtDTO dto); // 코트등록

	public int pollCourtRegistrationYes(String courtCode, String userAccountCode); // 코트등록찬성투표

	public int pollCourtRegistrationNo(String courtCode, String userAccountCode); // 코트등록반대투표

	public int makeCourtDeleteRequest(String courtCode, String userAccountCode); // 코트삭제요청

	public int pollCourtDeleteRequestYes(String courtDelRequestCode, String userAccountCode); // 코트삭제찬성투표

	public int pollDeleteRequestNo(String courtDelRequestCode, String userAccountCode); // 코트삭제반대투표

	public int addCourtName(CourtNameDTO dto); // 코트이름등록

	public int pollCourtName(String courtNameCode, String userAccountCode); // 코트이름투표

	public int addCourtTelephone(String courtCode, String telephone, String userAccountCode); // 코트연락처등록

	public int addCourtReview(CourtReviewDTO dto); // 코트리뷰등록

	public int approveCourtDeleteRequest(String courtDeleteRequestCode, String adminCode); // 코트삭제승인

	
	
	public List<CourtDTO> getCourtListByMapPostion(String posX, String posY); // 특정좌표 근처 코트 조회

	public List<CourtNameDTO> getCourtNameList(String courtCode, int start, int end); // 특정코트 코트이름 조회

	public int countCourtNames(String courtCode); // 특정코트 코트이름 전체 수

	public List<CourtReviewDTO> getCourtReviewList(String courtCode, int start, int end); // 특정코트 코트리뷰 조회

	public int countCourtReviews(String courtCode); // 특정코트 코트리뷰 전체 수

	public CourtDTO getCourt(String courtCode); // 특정코트 조회

	public String isReviewPossible(String courtCode, String userAccountCode); // 특정코트 코트리뷰 등록 여부
}
