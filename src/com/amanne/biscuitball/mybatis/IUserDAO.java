package com.amanne.biscuitball.mybatis;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

public interface IUserDAO
{
	public void registerUser(UserDTO user); // 회원가입

	public int checkUserNickname(String userNickname); // 닉네임 중복체크

	public int checkTelephone(String telphone); // 전화번호 중복체크

	public int checkEmail(String email); // 이메일 중복체크

	public int requestRemoveUser(String userAccountCode); // 회원탈퇴요청

	public int cancelRequestRemoveUser(String useruserAccountCode); // 회원탈퇴요청취소

	public int updateUser(UserDTO user); // 회원정보변경
	
	public int updateUserProfile(UserDTO user); // 회원프로필변경

	public int addSnsSync(String userCode, String snsKey); // SNS연동

	public int removeSnsSync(String userCode); // SNS연동 삭제

	public void sendMessage(MessageDTO msgDTO); // 메시지발신

	public int readMessage(String msgCode); // 메시지열람

	public int removeSentMessage(String msgCode); // 발신메시지삭제

	public int removeReceivedMessage(String msgCode); // 수신메시지삭제

	public void getAchievement(PersonalAchievementDTO personalAchievementDTO); // 개인업적획득

	public void issuePasswordResetCode(UserDTO userDTO); // 비번재설정코드발급

	public void resetPassword(@Param("userDTO") UserDTO userDTO, @Param("issueCode") String issueCode , @Param("userPassword") String userPassword); // 비밀번호재설정

	public int blockUser(String blockingAccountCode, String blockedAccountCode); // 회원차단

	public void loginAsUser(LoginDTO loginDTO); // 로그인

	public int makeFriendRequest(FriendRequestDTO dto); // 친구신청

	public int acceptFriendRequest(FriendRequestDTO dto); // 친구신청수락

	public int denyFreindRequest(FriendRequestDTO dto); // 친구신청거절
	
	public int cancelFriendRequest(String friendRequestCode); // 친구 신청 취소

	public int readNotification(String notificationCode); // 알림 열람

	public int removeNotification(String notificationCode); // 알림 삭제

	public int cancelFriendRequest(FriendRequestDTO dto); // 친구신청 취소
	
	public ArrayList<UserDTO> getUserListByNickname(@Param("keyword") String keyword, @Param("start") int start, @Param("end") int end); // 닉네임 유사한 유저 검색

	public int countUsersByNickname(String keyword); // 닉네임 유사한 유저 전체 수

	public MessageDTO getMessage(String messageCode); // 메시지 조회
	
	public ArrayList<MessageDTO> getSentMessageList(@Param("userAccountCode") String userAccountCode, @Param("start") int start, @Param("end") int end); // 특정유저 발신메시지 조회
	
	public ArrayList<MessageDTO> getReceivedMessageList(@Param("userAccountCode") String userAccountCode, @Param("start") int start, @Param("end") int end); // 특정유저 수신메시지 조회

	public int countSentMessageList(String userAccountCode); // 특정유저 발신메시지 전체 수

	public int countReceivedMessageList(String userAccountCode); // 특정유저 수신메시지 전체 수

	public ArrayList<FriendRequestDTO> getReceivedFriendRequestList(@Param("userAccountCode") String userAccountCode, @Param("start") int start, @Param("end") int end);	// 받은 친구신청 조회 

	public ArrayList<FriendRequestDTO> getSentFriendRequestList(@Param("userAccountCode") String userAccountCode, @Param("start") int start, @Param("end") int end); // 보낸 친구신청 조회

	public UserDTO getUser(String userAccountCode); // 특정 유저 조회

	public ArrayList<NotificationDTO> getNotificationArrayList(@Param("userAccountCode")String userAccountCode, @Param("start") int start, @Param("end") int end); // 특정 유저 알림 조회

	public int countNotifications(String userAccountCode); // 특정 유저 알림 전체 수

	public ArrayList<PersonalAchievementDTO> getPersonalAchievementList(@Param("userAccountCode")String userAccountCode, @Param("start") int start, @Param("end") int end); // 특정 유저 획득 업적 조회

	public ArrayList<PersonalAchievementDTO> getPersonalAchievementStatusList(@Param("userAccountCode")String userAccountCode, @Param("start") int start, @Param("end") int end); // 특정 유저 업적 현황 조회
	
	public int countPersonalAchievements(String userAccountCode); // 특정 유저 획득 업적 전체 수

	public ArrayList<UserDTO> getFriendList(@Param("userAccountCode")String userAccountCode, @Param("start") int start, @Param("end") int end); // 특정 유저 친구 조회
	
	public int countFriendList(String userAccountCode); // 특정 유저 친구 수
	
	public ArrayList<UserDTO> getBlockUserList(@Param("userAccountCode")String userAccountCode, @Param("start") int start, @Param("end") int end); // 특정 유저 블락유저 조회
	
	public String getUserCodeByEmail(@Param("userEmail") String userEmail);//이메일로 유저 코드 검색
}
