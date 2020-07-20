package com.amanne.biscuitball.mybatis;

import java.util.ArrayList;

public class UserDTO {

	private String	userCode;					//	회원코드	
	private String	userAccountCode;			//	회원계정코드	
	private String	userNickname;				//	닉네임	
	private boolean	snsSync;					//	sns연동여부	
	private String	userName;					//	이름	
	private String	userEmail;					//	이메일	
	private String	userPassword;				//	비밀번호	
	private String	userTel;					//	전화번호	
	private String	userBirthday;				//	생일	
	private int	userHeight;						//	키	
	private String	userRegisteredDate;			//	등록일시	
	private String	userGenderCode;				//	성별코드	
	private String	userGender;					//	성별	
	private String	selfEvaluationType;			//	자기평가실력
	private String	tierCode;					//	실력코드
	private String	tierName;					//	실력등급	
	private double	fairplayScore;				//	fps	
	private String	userCity;					//	거점지역명	
	private String	userProfileImg;				//	프로필사진경로	
	private String	userProfileTxt;				//	자기소개글	
	private String	userCourtCode;				//	내코트코드	
	private String	userCourtName;				//	내코트명	
	private String	userPosition;				//	선호포지션명	
	private String	userPositionAbbr;			//	선호포지션약어	
	private String	titleAchievementGetCode;	//	업적획득코드	
	private String	titleAchievementCode;		//	획득업적코드	
	private String	titleAchievementName;		//	획득업적명	
	private String	titleAchievementImg;		//	획득업적아이콘경로	
	private boolean	smsReceive;					//	sms수신여부	
	private boolean	cityOpen;					//	거점지역공개여부	
	private boolean	achvOpen;					//	획득업적공개여부	
	private boolean	genderOpen;					//	성별공개여부	
	private boolean	courtOpen;					//	내코트공개여부	
	private boolean	playlogOpen;				//	플레이로그공개여부	
	private String	msgBlockCode;				//	메시지블록종류코드	
	private String	msgBlockType;				//	메시지블록종류		
	private ArrayList<UserDTO>	friendList;		//	친구목록	
	private ArrayList<UserDTO>	userBlockList;	//	차단회원목록	
	private int	penaltyCount;					//	제재횟수	
	private String	userStatus;					//	제재상태	
	private String	userDeleteRequestedDate;	//	탈퇴요청일	
	
	
	public String getUserCode() {
		return userCode;
	}
	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}
	public String getUserAccountCode() {
		return userAccountCode;
	}
	public void setUserAccountCode(String userAccountCode) {
		this.userAccountCode = userAccountCode;
	}
	public String getUserNickname() {
		return userNickname;
	}
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}
	public boolean isSnsSync() {
		return snsSync;
	}
	public void setSnsSync(boolean snsSync) {
		this.snsSync = snsSync;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserTel() {
		return userTel;
	}
	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}
	public String getUserBirthday() {
		return userBirthday;
	}
	public void setUserBirthday(String userBirthday) {
		this.userBirthday = userBirthday;
	}
	public int getUserHeight() {
		return userHeight;
	}
	public void setUserHeight(int userHeight) {
		this.userHeight = userHeight;
	}
	public String getUserRegisteredDate() {
		return userRegisteredDate;
	}
	public void setUserRegisteredDate(String userRegisteredDate) {
		this.userRegisteredDate = userRegisteredDate;
	}
	public String getUserGenderCode() {
		return userGenderCode;
	}
	public void setUserGenderCode(String userGenderCode) {
		this.userGenderCode = userGenderCode;
	}
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	public String getSelfEvaluationType() {
		return selfEvaluationType;
	}
	public void setSelfEvaluationType(String selfEvaluationType) {
		this.selfEvaluationType = selfEvaluationType;
	}
	public String getTierCode() {
		return tierCode;
	}
	public void setTierCode(String tierCode) {
		this.tierCode = tierCode;
	}
	public String getTierName() {
		return tierName;
	}
	public void setTierName(String tierName) {
		this.tierName = tierName;
	}
	public double getFairplayScore() {
		return fairplayScore;
	}
	public void setFairplayScore(double fairplayScore) {
		this.fairplayScore = fairplayScore;
	}
	public String getUserCity() {
		return userCity;
	}
	public void setUserCity(String userCity) {
		this.userCity = userCity;
	}
	public String getUserProfileImg() {
		return userProfileImg;
	}
	public void setUserProfileImg(String userProfileImg) {
		this.userProfileImg = userProfileImg;
	}
	public String getUserProfileTxt() {
		return userProfileTxt;
	}
	public void setUserProfileTxt(String userProfileTxt) {
		this.userProfileTxt = userProfileTxt;
	}
	public String getUserCourtCode() {
		return userCourtCode;
	}
	public void setUserCourtCode(String userCourtCode) {
		this.userCourtCode = userCourtCode;
	}
	public String getUserCourtName() {
		return userCourtName;
	}
	public void setUserCourtName(String userCourtName) {
		this.userCourtName = userCourtName;
	}
	public String getUserPosition() {
		return userPosition;
	}
	public void setUserPosition(String userPosition) {
		this.userPosition = userPosition;
	}
	public String getUserPositionAbbr() {
		return userPositionAbbr;
	}
	public void setUserPositionAbbr(String userPositionAbbr) {
		this.userPositionAbbr = userPositionAbbr;
	}
	public String getTitleAchievementGetCode() {
		return titleAchievementGetCode;
	}
	public void setTitleAchievementGetCode(String titleAchievementGetCode) {
		this.titleAchievementGetCode = titleAchievementGetCode;
	}
	public String getTitleAchievementCode() {
		return titleAchievementCode;
	}
	public void setTitleAchievementCode(String titleAchievementCode) {
		this.titleAchievementCode = titleAchievementCode;
	}
	public String getTitleAchievementName() {
		return titleAchievementName;
	}
	public void setTitleAchievementName(String titleAchievementName) {
		this.titleAchievementName = titleAchievementName;
	}
	public String getTitleAchievementImg() {
		return titleAchievementImg;
	}
	public void setTitleAchievementImg(String titleAchievementImg) {
		this.titleAchievementImg = titleAchievementImg;
	}
	public boolean isSmsReceive() {
		return smsReceive;
	}
	public void setSmsReceive(boolean smsReceive) {
		this.smsReceive = smsReceive;
	}
	public boolean isCityOpen() {
		return cityOpen;
	}
	public void setCityOpen(boolean cityOpen) {
		this.cityOpen = cityOpen;
	}
	public boolean isAchvOpen() {
		return achvOpen;
	}
	public void setAchvOpen(boolean achvOpen) {
		this.achvOpen = achvOpen;
	}
	public boolean isGenderOpen() {
		return genderOpen;
	}
	public void setGenderOpen(boolean genderOpen) {
		this.genderOpen = genderOpen;
	}
	public boolean isCourtOpen() {
		return courtOpen;
	}
	public void setCourtOpen(boolean courtOpen) {
		this.courtOpen = courtOpen;
	}
	public boolean isPlaylogOpen() {
		return playlogOpen;
	}
	public void setPlaylogOpen(boolean playlogOpen) {
		this.playlogOpen = playlogOpen;
	}
	public String getMsgBlockCode() {
		return msgBlockCode;
	}
	public void setMsgBlockCode(String msgBlockCode) {
		this.msgBlockCode = msgBlockCode;
	}
	public String getMsgBlockType() {
		return msgBlockType;
	}
	public void setMsgBlockType(String msgBlockType) {
		this.msgBlockType = msgBlockType;
	}
	public ArrayList<UserDTO> getFriendList() {
		return friendList;
	}
	public void setFriendList(ArrayList<UserDTO> friendList) {
		this.friendList = friendList;
	}
	public ArrayList<UserDTO> getUserBlockList() {
		return userBlockList;
	}
	public void setUserBlockList(ArrayList<UserDTO> userBlockList) {
		this.userBlockList = userBlockList;
	}
	public int getPenaltyCount() {
		return penaltyCount;
	}
	public void setPenaltyCount(int penaltyCount) {
		this.penaltyCount = penaltyCount;
	}
	public String getUserStatus() {
		return userStatus;
	}
	public void setUserStatus(String userStatus) {
		this.userStatus = userStatus;
	}
	public String getUserDeleteRequestedDate() {
		return userDeleteRequestedDate;
	}
	public void setUserDeleteRequestedDate(String userDeleteRequestedDate) {
		this.userDeleteRequestedDate = userDeleteRequestedDate;
	}	
}
