package com.amanne.biscuitball.mybatis;

public class CourtReviewDTO {
	private String courtReviewCode; 			// 코트리뷰코드
	private String courtReviewContent; 			// 코트리뷰내용
	private double courtReviewManageScore;	 	// 관리별점
	private String courtReviewRegisteredDate; 	// 등록일시
	private double courtReviewSatisfaction; 	// 만족도
	private String courtCapacityCode; 			// 적정인원수코드
	private int minCourtCapacity; 				// 최소인원수
	private int maxCourtCapacity; 				// 최대인원수
	private String courtCode; 					// 코트코드
	private String registrantAccountCode; 		// 등록회원계정코드
	private String registrantNickname; 			// 등록회원닉네임
	private String courtReviewDelDate; 			// 삭제일시
	private String courtReviewStatus; 			// 상태
	private int likes; 							// 좋아요수
	private int dislikes; 						// 싫어요수
	private boolean toilet; 					// 화장실유무
	private boolean shower; 					// 샤워장유무
	private boolean parkinglot; 				// 주차장유무
	private boolean pollOrNot; 					// 투표 여부
	private boolean pollLikeOrDislike; 			// 좋아요/싫어요 투표여부
	
	public String getCourtReviewCode() {
		return courtReviewCode;
	}
	public void setCourtReviewCode(String courtReviewCode) {
		this.courtReviewCode = courtReviewCode;
	}
	public String getCourtReviewContent() {
		return courtReviewContent;
	}
	public void setCourtReviewContent(String courtReviewContent) {
		this.courtReviewContent = courtReviewContent;
	}
	public double getCourtReviewManageScore() {
		return courtReviewManageScore;
	}
	public void setCourtReviewManageScore(double courtReviewManageScore) {
		this.courtReviewManageScore = courtReviewManageScore;
	}
	public String getCourtReviewRegisteredDate() {
		return courtReviewRegisteredDate;
	}
	public void setCourtReviewRegisteredDate(String courtReviewRegisteredDate) {
		this.courtReviewRegisteredDate = courtReviewRegisteredDate;
	}
	public double getCourtReviewSatisfaction() {
		return courtReviewSatisfaction;
	}
	public void setCourtReviewSatisfaction(double courtReviewSatisfaction) {
		this.courtReviewSatisfaction = courtReviewSatisfaction;
	}
	public String getCourtCapacityCode() {
		return courtCapacityCode;
	}
	public void setCourtCapacityCode(String courtCapacityCode) {
		this.courtCapacityCode = courtCapacityCode;
	}
	public int getMinCourtCapacity() {
		return minCourtCapacity;
	}
	public void setMinCourtCapacity(int minCourtCapacity) {
		this.minCourtCapacity = minCourtCapacity;
	}
	public int getMaxCourtCapacity() {
		return maxCourtCapacity;
	}
	public void setMaxCourtCapacity(int maxCourtCapacity) {
		this.maxCourtCapacity = maxCourtCapacity;
	}
	public String getCourtCode() {
		return courtCode;
	}
	public void setCourtCode(String courtCode) {
		this.courtCode = courtCode;
	}
	public String getRegistrantAccountCode() {
		return registrantAccountCode;
	}
	public void setRegistrantAccountCode(String registrantAccountCode) {
		this.registrantAccountCode = registrantAccountCode;
	}
	public String getRegistrantNickname() {
		return registrantNickname;
	}
	public void setRegistrantNickname(String registrantNickname) {
		this.registrantNickname = registrantNickname;
	}
	public String getCourtReviewDelDate() {
		return courtReviewDelDate;
	}
	public void setCourtReviewDelDate(String courtReviewDelDate) {
		this.courtReviewDelDate = courtReviewDelDate;
	}
	public String getCourtReviewStatus() {
		return courtReviewStatus;
	}
	public void setCourtReviewStatus(String courtReviewStatus) {
		this.courtReviewStatus = courtReviewStatus;
	}
	public int getLikes() {
		return likes;
	}
	public void setLikes(int likes) {
		this.likes = likes;
	}
	public int getDislikes() {
		return dislikes;
	}
	public void setDislikes(int dislikes) {
		this.dislikes = dislikes;
	}
	public boolean isToilet() {
		return toilet;
	}
	public void setToilet(boolean toilet) {
		this.toilet = toilet;
	}
	public boolean isShower() {
		return shower;
	}
	public void setShower(boolean shower) {
		this.shower = shower;
	}
	public boolean isParkinglot() {
		return parkinglot;
	}
	public void setParkinglot(boolean parkinglot) {
		this.parkinglot = parkinglot;
	}
	public boolean isPollOrNot() {
		return pollOrNot;
	}
	public void setPollOrNot(boolean pollOrNot) {
		this.pollOrNot = pollOrNot;
	}
	public boolean isPollLikeOrDislike() {
		return pollLikeOrDislike;
	}
	public void setPollLikeOrDislike(boolean pollLikeOrDislike) {
		this.pollLikeOrDislike = pollLikeOrDislike;
	}
}
