package com.amanne.biscuitball.mybatis;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

public interface ICourtDAO
{
	public int registerCourt(CourtDTO dto); // 코트등록

	public void pollCourtRegistrationYes(PollDTO dto); // 코트등록찬성투표

	public void pollCourtRegistrationNo(PollDTO dto); // 코트등록반대투표

	public void makeCourtDeleteRequest(CourtDeleteRequestDTO dto); // 코트삭제요청

	public void pollCourtDeleteRequestYes(PollDTO dto); // 코트삭제찬성투표

	public void pollCourtDeleteRequestNo(PollDTO dto); // 코트삭제반대투표

	public int addCourtName(CourtNameDTO dto); // 코트이름등록

	public int pollCourtName(PollDTO dto); // 코트이름투표

	public int addCourtTelephone(@Param("courtCode") String courtCode, @Param("telephone") String telephone, @Param("userAccountCode") String userAccountCode); // 코트연락처등록

	public void addCourtReview(CourtReviewDTO dto); // 코트리뷰등록

	public void approveCourtDeleteRequest(CourtDeleteRequestDTO dto); // 코트삭제승인
	
	public ArrayList<CourtDTO> getCourtListByMapPosition(@Param("posX") String posX, @Param("posY") String posY, @Param("distance") double distance); // 특정좌표 근처 코트 조회

	public ArrayList<CourtNameDTO> getCourtNameList(@Param("courtCode") String courtCode, @Param("userAccountCode") String userAccountCode, @Param("start") int start, @Param("end") int end, @Param("order") String order); // 특정코트 코트이름 조회

	public int countCourtNames(String courtCode); // 특정코트 코트이름 전체 수

	public ArrayList<CourtReviewDTO> getCourtReviewList(@Param("courtCode") String courtCode, @Param("userAccountCode") String userAccountCode, @Param("start") int start, @Param("end") int end, @Param("order") String order); // 특정코트 코트리뷰 조회

	public int countCourtReviews(String courtCode); // 특정코트 코트리뷰 전체 수

	public CourtDTO getCourt(String courtCode); // 특정코트 조회

	public CourtReviewDTO getCourtReviewByAuthor(@Param("courtCode") String courtCode, @Param("userAccountCode") String userAccountCode); // 특정코트 코트리뷰 등록 여부
	
	public int checkCourtName(@Param("courtCode") String courtCode, @Param("courtName") String courtName);	// 특정 코트의 코트 이름 중복 조회
	
	public ArrayList<CourtDTO> getCourtListByCity(@Param("cityCode") String cityCode);	// 특정 시군구 안의 코트 조회
	
	public ArrayList<CourtDTO> getCourtListByRegion(@Param("regionCode") String regionCode);	// 특정 광역시도 안의 코트 조회
}