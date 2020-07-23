/*============================================
 	CourtDTO.java
 	생성일: 2020.07.20
 	최근수정일: 2020.07.23
=============================================*/

package com.amanne.biscuitball.mybatis;

import java.util.ArrayList;

public class CourtDTO 
{
	private String courtCode; 							// 코트등록코드
	private String courtRegisteredDate; 				// 등록일시
	private String mapPosition; 						// 좌표
	private String mapPositionX; 						// x좌표
	private String mapPositionY; 						// y좌표
	private String registrantAccountCode; 				// 등록자계정코드
	private String registrantNickname; 					// 등록자닉네임
	private int myCourtCount; 							// 내코트등록수
	private String courtImg1; 							// 코트이미지1
	private String courtImg2; 							// 코트이미지2
	private String courtImg3; 							// 코트이미지3
	private String courtNameCode; 						// 코트대표이름코드
	private String courtName; 							// 코트대표이름
	private String courtNamePollRate; 					// 코트대표이름득표율
	private double avgCourtManageScore; 				// 코트관리점수
	private double avgCourtSatisfaction; 				// 코트만족도
	private String courtRating; 						// 코트등급
	private String courtCapacityCode; 					// 코트적정인원수코드
	private int minCourtCapacity; 						// 최소코트인원수
	private int maxCourtCapacity; 						// 최대코트인원수
	private String toilet; 							// 화장실유무
	private double toiletConfidence; 					// 신뢰도
	private String shower; 							// 샤워장유무
	private double showerConfidence; 					// 신뢰도
	private String parkinglot; 						// 주차장유무
	private double parkinglotConfidence; 				// 신뢰도
	private String enrollYesCount; 						// 코트등록찬성수
	private String enrollNoCount; 						// 코트등록반대수
	private String delRequestCode; 						// 최근삭제요청코드
	private String delRequestDate; 						// 최근삭제요청일시
	private String delApproveDate; 						// 삭제요청확정일시
	private String delRequestPollYesCount; 				// 삭제요청찬성수
	private String delRequestPollNoCount; 				// 삭제요청반대수
	private String delAdminCode; 						// 삭제관리자코드
	private String adminDelDate; 						// 관리자삭제일시
	private String courtStatus; 						// 코트상태
	private ArrayList<CourtReviewDTO> courtReviewList; 	// 코트리뷰리스트
	private ArrayList<CourtReviewDTO> courtNameList; 	// 코트이름리스트
	private String blindStatus;							// 블라인드 상태
	private String returnValue;
	
	public String getCourtCode()
	{
		return courtCode;
	}
	public void setCourtCode(String courtCode)
	{
		this.courtCode = courtCode;
	}
	public String getCourtRegisteredDate()
	{
		return courtRegisteredDate;
	}
	public void setCourtRegisteredDate(String courtRegisteredDate)
	{
		this.courtRegisteredDate = courtRegisteredDate;
	}
	public String getMapPosition()
	{
		return mapPosition;
	}
	public void setMapPosition(String mapPosition)
	{
		this.mapPosition = mapPosition;
	}
	public String getMapPositionX()
	{
		return mapPositionX;
	}
	public void setMapPositionX(String mapPositionX)
	{
		this.mapPositionX = mapPositionX;
	}
	public String getMapPositionY()
	{
		return mapPositionY;
	}
	public void setMapPositionY(String mapPositionY)
	{
		this.mapPositionY = mapPositionY;
	}
	public String getRegistrantAccountCode()
	{
		return registrantAccountCode;
	}
	public void setRegistrantAccountCode(String registrantAccountCode)
	{
		this.registrantAccountCode = registrantAccountCode;
	}
	public String getRegistrantNickname()
	{
		return registrantNickname;
	}
	public void setRegistrantNickname(String registrantNickname)
	{
		this.registrantNickname = registrantNickname;
	}
	public int getMyCourtCount()
	{
		return myCourtCount;
	}
	public void setMyCourtCount(int myCourtCount)
	{
		this.myCourtCount = myCourtCount;
	}
	public String getCourtImg1()
	{
		return courtImg1;
	}
	public void setCourtImg1(String courtImg1)
	{
		this.courtImg1 = courtImg1;
	}
	public String getCourtImg2()
	{
		return courtImg2;
	}
	public void setCourtImg2(String courtImg2)
	{
		this.courtImg2 = courtImg2;
	}
	public String getCourtImg3()
	{
		return courtImg3;
	}
	public void setCourtImg3(String courtImg3)
	{
		this.courtImg3 = courtImg3;
	}
	public String getCourtNameCode()
	{
		return courtNameCode;
	}
	public void setCourtNameCode(String courtNameCode)
	{
		this.courtNameCode = courtNameCode;
	}
	public String getCourtName()
	{
		return courtName;
	}
	public void setCourtName(String courtName)
	{
		this.courtName = courtName;
	}
	public String getCourtNamePollRate()
	{
		return courtNamePollRate;
	}
	public void setCourtNamePollRate(String courtNamePollRate)
	{
		this.courtNamePollRate = courtNamePollRate;
	}
	public double getAvgCourtManageScore()
	{
		return avgCourtManageScore;
	}
	public void setAvgCourtManageScore(double avgCourtManageScore)
	{
		this.avgCourtManageScore = avgCourtManageScore;
	}
	public double getAvgCourtSatisfaction()
	{
		return avgCourtSatisfaction;
	}
	public void setAvgCourtSatisfaction(double avgCourtSatisfaction)
	{
		this.avgCourtSatisfaction = avgCourtSatisfaction;
	}
	public String getCourtRating()
	{
		return courtRating;
	}
	public void setCourtRating(String courtRating)
	{
		this.courtRating = courtRating;
	}
	public String getCourtCapacityCode()
	{
		return courtCapacityCode;
	}
	public void setCourtCapacityCode(String courtCapacityCode)
	{
		this.courtCapacityCode = courtCapacityCode;
	}
	public int getMinCourtCapacity()
	{
		return minCourtCapacity;
	}
	public void setMinCourtCapacity(int minCourtCapacity)
	{
		this.minCourtCapacity = minCourtCapacity;
	}
	public int getMaxCourtCapacity()
	{
		return maxCourtCapacity;
	}
	public void setMaxCourtCapacity(int maxCourtCapacity)
	{
		this.maxCourtCapacity = maxCourtCapacity;
	}
	public String getToilet()
	{
		return toilet;
	}
	public void setToilet(String toilet)
	{
		this.toilet = toilet;
	}
	public double getToiletConfidence()
	{
		return toiletConfidence;
	}
	public void setToiletConfidence(double toiletConfidence)
	{
		this.toiletConfidence = toiletConfidence;
	}
	public String getShower()
	{
		return shower;
	}
	public void setShower(String shower)
	{
		this.shower = shower;
	}
	public double getShowerConfidence()
	{
		return showerConfidence;
	}
	public void setShowerConfidence(double showerConfidence)
	{
		this.showerConfidence = showerConfidence;
	}
	public String getParkinglot()
	{
		return parkinglot;
	}
	public void setParkinglot(String parkinglot)
	{
		this.parkinglot = parkinglot;
	}
	public double getParkinglotConfidence()
	{
		return parkinglotConfidence;
	}
	public void setParkinglotConfidence(double parkinglotConfidence)
	{
		this.parkinglotConfidence = parkinglotConfidence;
	}
	public String getEnrollYesCount()
	{
		return enrollYesCount;
	}
	public void setEnrollYesCount(String enrollYesCount)
	{
		this.enrollYesCount = enrollYesCount;
	}
	public String getEnrollNoCount()
	{
		return enrollNoCount;
	}
	public void setEnrollNoCount(String enrollNoCount)
	{
		this.enrollNoCount = enrollNoCount;
	}
	public String getDelRequestCode()
	{
		return delRequestCode;
	}
	public void setDelRequestCode(String delRequestCode)
	{
		this.delRequestCode = delRequestCode;
	}
	public String getDelRequestDate()
	{
		return delRequestDate;
	}
	public void setDelRequestDate(String delRequestDate)
	{
		this.delRequestDate = delRequestDate;
	}
	public String getDelApproveDate()
	{
		return delApproveDate;
	}
	public void setDelApproveDate(String delApproveDate)
	{
		this.delApproveDate = delApproveDate;
	}
	public String getDelRequestPollYesCount()
	{
		return delRequestPollYesCount;
	}
	public void setDelRequestPollYesCount(String delRequestPollYesCount)
	{
		this.delRequestPollYesCount = delRequestPollYesCount;
	}
	public String getDelRequestPollNoCount()
	{
		return delRequestPollNoCount;
	}
	public void setDelRequestPollNoCount(String delRequestPollNoCount)
	{
		this.delRequestPollNoCount = delRequestPollNoCount;
	}
	public String getDelAdminCode()
	{
		return delAdminCode;
	}
	public void setDelAdminCode(String delAdminCode)
	{
		this.delAdminCode = delAdminCode;
	}
	public String getAdminDelDate()
	{
		return adminDelDate;
	}
	public void setAdminDelDate(String adminDelDate)
	{
		this.adminDelDate = adminDelDate;
	}
	public String getCourtStatus()
	{
		return courtStatus;
	}
	public void setCourtStatus(String courtStatus)
	{
		this.courtStatus = courtStatus;
	}
	public ArrayList<CourtReviewDTO> getCourtReviewList()
	{
		return courtReviewList;
	}
	public void setCourtReviewList(ArrayList<CourtReviewDTO> courtReviewList)
	{
		this.courtReviewList = courtReviewList;
	}
	public ArrayList<CourtReviewDTO> getCourtNameList()
	{
		return courtNameList;
	}
	public void setCourtNameList(ArrayList<CourtReviewDTO> courtNameList)
	{
		this.courtNameList = courtNameList;
	}
	public String getBlindStatus()
	{
		return blindStatus;
	}
	public void setBlindStatus(String blindStatus)
	{
		this.blindStatus = blindStatus;
	}
	public String getReturnValue()
	{
		return returnValue;
	}
	public void setReturnValue(String returnValue)
	{
		this.returnValue = returnValue;
	}
	
}