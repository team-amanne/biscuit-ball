package com.amanne.biscuitball.mybatis;

import java.util.List;

public interface IUserDAO
{
	public int registerUser(UserDTO user); // 회원가입

	public int checkUserNickname(String userNickname); // 닉네임 중복체크

	public int checkTelephone(String telphone); // 전화번호 중복체크

	public int checkEmail(String email); // 이메일 중복체크

	public int requestRemoveUser(String userAccountCode); // 회원탈퇴요청

	public int cancelRequestRemoveUser(String useruserAccountCode); // 회원탈퇴요청취소

	public int updateUser(UserDTO user); // 회원정보변경, 회원프로필변경

	public int addSnsSync(String userCode, String snsKey); // SNS연동

	public int removeSnsSync(String userCode); // SNS연동 삭제

	public int sendMessage(MessageDTO msgDTO); // 메시지발신

	public int readMessage(String msgCode); // 메시지열람

	public int removeSentMessage(String msgCode); // 발신메시지삭제

	public int removeReceivedMessage(String msgCode); // 수신메시지삭제

	public int getAchievement(PersonalAchievementDTO personalAchievementDTO); // 개인업적획득

	public String issuePasswordResetCode(String userCode); // 비번재설정코드발급

	public int resetPassword(String userCode, String issueCode); // 비밀번호재설정

	public int blockUser(String blockingAccountCode, String blockedAccountCode); // 회원차단

	public int loginAsUser(String email, String password, String ip); // 로그인

	public int makeFriendRequest(FriendRequestDTO dto); // 친구신청

	public int acceptFriendRequest(FriendRequestDTO dto); // 친구신청수락

	public int denyFreindRequest(FriendRequestDTO dto); // 친구신청거절

	public int readNotification(String notificationCode); // 알림 열람

	public int removeNotification(String notificationCode); // 알림 삭제

	public int cancelFriendRequest(FriendRequestDTO dto); // 친구신청 취소

	public List<UserDTO> getUserListByNickname(String keyword, int start, int end); // 닉네임 유사한 유저 검색

	public int countUsersByNickname(String keyword); // 닉네임 유사한 유저 전체 수

	public List<MessageDTO> getSentMessageList(String userAccountCode, int start, int end); // 특정유저 발신메시지 조회

	public List<MessageDTO> getReceivedMessageList(String userAccountCode, int start, int end); // 특정유저 수신메시지 조회

	public int countSentMessageList(String userAccountCode); // 특정유저 발신메시지 전체 수

	public int countReceivedMessageList(String userAccountCode); // 특정유저 수신메시지 전체 수

	public List<FriendRequestDTO> getReceivedFriendRequestList(String userAccountCode); // 받은 친구신청 조회

	public List<FriendRequestDTO> getSentFriendRequestList(String userAccountCode); // 보낸 친구신청 조회

	public UserDTO getUser(String userAccountCode); // 특정 유저 조회

	public List<NotificationDTO> getNotificationList(String userAccountCode, int start, int end); // 특정 유저 알림 조회

	public int countNotifications(String userAccountCode); // 특정 유저 알림 전체 수

	public List<PersonalAchievementDTO> getPersonalAchievementList(String userAccountCode, int start, int end); // 특정 유저 획득 업적 조회

	public int countPersonalAchievements(String userAccountCode); // 특정 유저 획득 업적 전체 수

	public List<UserDTO> getFriendList(String userAccountCode); // 특정 유저 친구 조회

	public List<UserDTO> getBlockUserList(String userAccountCode); // 특정 유저 블락유저 조회
}
