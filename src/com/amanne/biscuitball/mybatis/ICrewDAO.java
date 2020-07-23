package com.amanne.biscuitball.mybatis;

import java.util.List;

public interface ICrewDAO
{
	public void registerCrew(CrewDTO crew); // 크루개설

	public int updateCrew(CrewDTO crew); // 크루정보갱신

	public int reqeustCrewBreak(String crewCode); // 크루해체요청

	public int cancelRequestCrewBreak(String crewCode); // 크루해체요청취소

	public int requestCrewJoin(String userAccountCode, String crewCode); // 크루가입신청

	public int acceptCrewJoinRequest(String requestCrewJoinCode); // 크루가입수락

	public int denyCrewJoinRequest(String requestCrewJoinCode); // 크루가입거절

	public int inviteToCrew(String crewCode, String userAccountCode); // 크루초대

	public int acceptCrewInvitation(String crewInvitationCode); // 크루초대수락

	public int denyCrewInvitation(String crewInvitationCode); // 크루초대거절

	public int getCrewAchievement(CrewAchievementDTO crewAchievementDTO); // 크루업적획득

	public int withdrawCrewMember(String crewMemberCode); // 크루탈퇴

	public int addCrewPost(CrewPostDTO crewPostDTO); // 크루게시글등록

	public int increaseHitcount(String crewPostCode); // 크루 조회수 증가

	public int updateCrewPost(CrewPostDTO crewPostDTO); // 크루게시글수정

	public int removeCrewPost(String crewPostCode); // 크루게시글삭제

	public int addCrewComment(CrewCommentDTO crewCommentDTO); // 크루댓글등록

	public int updateCrewComment(CrewCommentDTO crewCommentDTO); // 크루댓글수정

	public int removeCrewComment(String crewCommentCode); // 크루댓글삭제

	public int appointCrewLeader(String crewMemberCode); // 크루리더위임

	public int addBaseArea(String crewCode, String regionCode); // 거점지역추가

	public CrewDTO getCrew(String crewCode); // 특정크루조회

	public List<CrewDTO> getCrewListByName(String keyword, int start, int end); // 크루명으로 검색

	public int countCrewsByName(String keyword); // 크루명으로 검색 전체 수

	public List<CrewAchievementDTO> getCrewAchievementList(String crewCode, int start, int end); // 특정크루 업적현황조회

	public int countCrewAchievements(String crewCode); // 특정크루 업적현황 전체 수

	public List<CrewMemberDTO> getCrewInvitationList(String crewCode, int start, int end); // 특정크루 미처리된 초대 조회

	public int countCrewInvitations(String crewCode); // 특정크루 미처리된 초대 수

	public List<CrewMemberDTO> getCrewJoinRequestList(String crewCode, int start, int end); // 특정크루 미처리된 가입신청 수

	public int countCrewJoinRequests(String crewCode); // 특정크루 미처리된 가입신청 조회

	public List<CrewPostDTO> getCrewPostList(String crewCode, String searchKey, String searchValue, int start, int end); // 특정크루
																													// 크루게시글
																													// 조회

	public int countCrewPosts(String crewCode, String searchKey, String searchValue); // 특정크루 크루게시글 수

	public CrewPostDTO getCrewPost(String crewPostCode); // 특정크루게시글 조회

	public List<CrewMemberDTO> getCrewMemberList(String crewCode); // 특정크루 크루멤버 조회
}
