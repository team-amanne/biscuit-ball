/*============================================
    UserBlockDTO.java
    생성일: 2020.07.23
    최근수정일: 2020.07.23
=============================================*/

package com.amanne.biscuitball.mybatis;

public class UserBlockDTO {
   private String userBlockCode;          // 차단코드
   private String blockingAccountCode;    // 차단요청자유저코드
   private String blockingNickname;       // 차단요청자닉네임
   private String blockingProfileImg;       // 차단요청자프로필사진
   private String blockedAccountCode;       // 차단대상자유저코드
   private String blockedNickname;       // 차단대상자유저닉네임
   private String blockedProfileImg;       // 차단대상자프로필사진
   private String returnValue;
   
   
   public String getReturnValue() {
      return returnValue;
   }
   public void setReturnValue(String returnValue) {
      this.returnValue = returnValue;
   }
   public String getUserBlockCode() {
      return userBlockCode;
   }
   public void setUserBlockCode(String userBlockCode) {
      this.userBlockCode = userBlockCode;
   }
   public String getBlockingAccountCode() {
      return blockingAccountCode;
   }
   public void setBlockingAccountCode(String blockingAccountCode) {
      this.blockingAccountCode = blockingAccountCode;
   }
   public String getBlockingNickname() {
      return blockingNickname;
   }
   public void setBlockingNickname(String blockingNickname) {
      this.blockingNickname = blockingNickname;
   }
   public String getBlockingProfileImg() {
      return blockingProfileImg;
   }
   public void setBlockingProfileImg(String blockingProfileImg) {
      this.blockingProfileImg = blockingProfileImg;
   }
   public String getBlockedAccountCode() {
      return blockedAccountCode;
   }
   public void setBlockedAccountCode(String blockedAccountCode) {
      this.blockedAccountCode = blockedAccountCode;
   }
   public String getBlockedNickname() {
      return blockedNickname;
   }
   public void setBlockedNickname(String blockedNickname) {
      this.blockedNickname = blockedNickname;
   }
   public String getBlockedProfileImg() {
      return blockedProfileImg;
   }
   public void setBlockedProfileImg(String blockedProfileImg) {
      this.blockedProfileImg = blockedProfileImg;
   }


}