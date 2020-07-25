package com.amanne.biscuitball.mybatis;

import java.util.List;

public interface IMeetingDAO
{
	public int registerMeeting(MeetingDTO meetingDTO, MeetingMemberDTO meetingMemberDTO); // 모임개설

	public int joinMeeting(MeetingMemberDTO meetingMemberDTO); // 모임참가

	public int cancelJoinMeeting(MeetingMemberDTO meetingMemberDTO); // 모임참가취소

	public int inputMeetingPlaylog(MeetingPlaylogDTO meetingPlaylogDTO); // 플레이로그등록

	public int inputFairplayScore(EvaluationDTO fairplayScoreDTO); // FPS 평가

	public int inputPersonalAbilityEvaluation(EvaluationDTO personalAbilityEvaluationDTO); // 실력평가

	public int inputNoshow(NoshowDTO noshowDTO); // 노쇼기록

	public int updateMeetingNotice(MeetingDTO meetingDTO); // 모임공지사항수정

	public int registerMeetingCommentComment(MeetingCommentDTO meetingCommentDTO); // 모임댓글등록

	public int updateMeetingCommentComment(MeetingCommentDTO meetingCommentDTO); // 모임댓글수정

	public int removeMeetingCommentComment(MeetingCommentDTO meetingCommentDTO); // 모임댓글삭제

	
	
	public List<MeetingDTO> getMeetingByMapPosition(String posX, String posY); // 코트중심 예정 모임 조회

	public int countMeetingByMapPosition(String posX, String posY); // 코트중심 예정 모임 전체 수

	
	
	public List<MeetingDTO> getMeetingListByCourt(String courtCode); // 특정코트의 예정 모임 조회

	public int countMeetingsByCourt(String courtCode); // 특정코트의 예정 모임 수

	
	
	public List<MeetingDTO> getPastMeetingList(String userAccountCode); // 참여했던 모임 조회

	public int countMetList(String userAccountCode); // 참여했던 모임 전체 수

	
	
	public List<MeetingDTO> getMeetingListNotInputPlaylog(String userAccountCode); // PL입력x 모임 조회

	public int countMeetingsNotInputPlaylog(String userAccountCode); // PL입력x 모임 전체 수

	
	
	public List<MeetingDTO> getJoinMeetingList(String userAccountCode); // 참여신청한 모임 조회(예정)

	public int countJoinMeeting(String userAccountCode); // 참여신청한 모임 전체 수(예정)


	
	public MeetingDTO getMeeting(String meetingCode); // 특정모임 조회

	public List<MeetingMemberDTO> getMeetingMemberList(String meetingCode); // 특정모임 참가자 조회
	
	
	public List<MeetingDTO> getMeetingListByCityDate(String cityCode, String date);	// 날짜, 지역에 따른 모임 리스트 조회
	
	public List<MeetingDTO> countMeetingListByCityDate(String cityCode, String date);	// 날짜, 지역에 따른 모임 리스트 카운트
	
}
