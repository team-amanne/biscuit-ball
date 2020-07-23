/*============================================
   PersonalAchievementDTO.java
    생성일: 2020.07.20
    최근수정일: 2020.07.21
=============================================*/

package com.amanne.biscuitball.mybatis;

public class PersonalAchievementDTO
{
   private String personalAchievementGetCode;       // 개인업적획득번호
   private String personalAchievementCode;       // 개인업적번호(PK)
   private String personalAchievementName;       // 업적명
   private String personalAchievementImg;          // 업적아이콘경로
   private String personalAchievementCondition;    // 업적조건내용
   private String getterAccountCode;             // 획득회원계정코드   
   private String getterNickname;               // 획득회원닉네임
   private String personalAchievementGetDate;       // 획득일시
   private String getAchievementStatus;         // 획득여부
   private String titleAchievementStatus;         // 대표업적여부
   private String returnValue;
   
   public String getGetterNickname() {
      return getterNickname;
   }

   public void setGetterNickname(String getterNickname) {
      this.getterNickname = getterNickname;
   }

   
   
   public String getGetAchievementStatus() {
      return getAchievementStatus;
   }

   public void setGetAchievementStatus(String getAchievementStatus) {
      this.getAchievementStatus = getAchievementStatus;
   }

   public String getTitleAchievementStatus() {
      return titleAchievementStatus;
   }

   public void setTitleAchievementStatus(String titleAchievementStatus) {
      this.titleAchievementStatus = titleAchievementStatus;
   }

   

   public String getPersonalAchievementGetCode()
   {
      return personalAchievementGetCode;
   }

   public void setPersonalAchievementGetCode(String personalAchievementGetCode)
   {
      this.personalAchievementGetCode = personalAchievementGetCode;
   }

   public String getPersonalAchievementCode()
   {
      return personalAchievementCode;
   }

   public void setPersonalAchievementCode(String personalAchievementCode)
   {
      this.personalAchievementCode = personalAchievementCode;
   }

   public String getPersonalAchievementName()
   {
      return personalAchievementName;
   }

   public void setPersonalAchievementName(String personalAchievementName)
   {
      this.personalAchievementName = personalAchievementName;
   }

   public String getPersonalAchievementImg()
   {
      return personalAchievementImg;
   }

   public void setPersonalAchievementImg(String personalAchievementImg)
   {
      this.personalAchievementImg = personalAchievementImg;
   }

   public String getPersonalAchievementCondition()
   {
      return personalAchievementCondition;
   }

   public void setPersonalAchievementCondition(String personalAchievementCondition)
   {
      this.personalAchievementCondition = personalAchievementCondition;
   }

   public String getGetterAccountCode()
   {
      return getterAccountCode;
   }

   public void setGetterAccountCode(String getterAccountCode)
   {
      this.getterAccountCode = getterAccountCode;
   }

   public String getPersonalAchievementGetDate()
   {
      return personalAchievementGetDate;
   }

   public void setPersonalAchievementGetDate(String personalAchievementGetDate)
   {
      this.personalAchievementGetDate = personalAchievementGetDate;
   }

   public String isReturnValue() {
      return returnValue;
   }

   public void setReturnValue(String returnValue) {
      this.returnValue = returnValue;
   }

}