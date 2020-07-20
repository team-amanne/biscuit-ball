package com.amanne.biscuitball.mybatis;

public class EvaluationDTO {
	private String playlogCode; 					// 플레이로그코드
	private String personalAbilityEvaluationCode; 	// 실력평가코드
	private String fairplayScoreCode; 				// 페어플레이점수평가코드
	private String evaluatorMeetingJoinCode; 		// 평가자참가코드
	private String evaluatorAccountCode; 			// 평가자계정코드
	private String evaluateeMeetingJoinCode; 		// 평가받은유저참가코드
	private String evaluateeAccountCode; 			// 평가받은유저계정코드
	private String evaluateeNickname; 				// 평가받은유저닉네임
	private double fairplayScore; 					// 페어플레이점수
	private String abilityEvaluationTypeCode; 		// 평가종류코드
	private String abilityEvaluationType; 			// 평가종류
	
	public String getPlaylogCode() {
		return playlogCode;
	}
	public void setPlaylogCode(String playlogCode) {
		this.playlogCode = playlogCode;
	}
	public String getPersonalAbilityEvaluationCode() {
		return personalAbilityEvaluationCode;
	}
	public void setPersonalAbilityEvaluationCode(String personalAbilityEvaluationCode) {
		this.personalAbilityEvaluationCode = personalAbilityEvaluationCode;
	}
	public String getFairplayScoreCode() {
		return fairplayScoreCode;
	}
	public void setFairplayScoreCode(String fairplayScoreCode) {
		this.fairplayScoreCode = fairplayScoreCode;
	}
	public String getEvaluatorMeetingJoinCode() {
		return evaluatorMeetingJoinCode;
	}
	public void setEvaluatorMeetingJoinCode(String evaluatorMeetingJoinCode) {
		this.evaluatorMeetingJoinCode = evaluatorMeetingJoinCode;
	}
	public String getEvaluatorAccountCode() {
		return evaluatorAccountCode;
	}
	public void setEvaluatorAccountCode(String evaluatorAccountCode) {
		this.evaluatorAccountCode = evaluatorAccountCode;
	}
	public String getEvaluateeMeetingJoinCode() {
		return evaluateeMeetingJoinCode;
	}
	public void setEvaluateeMeetingJoinCode(String evaluateeMeetingJoinCode) {
		this.evaluateeMeetingJoinCode = evaluateeMeetingJoinCode;
	}
	public String getEvaluateeAccountCode() {
		return evaluateeAccountCode;
	}
	public void setEvaluateeAccountCode(String evaluateeAccountCode) {
		this.evaluateeAccountCode = evaluateeAccountCode;
	}
	public String getEvaluateeNickname() {
		return evaluateeNickname;
	}
	public void setEvaluateeNickname(String evaluateeNickname) {
		this.evaluateeNickname = evaluateeNickname;
	}
	public double getFairplayScore() {
		return fairplayScore;
	}
	public void setFairplayScore(double fairplayScore) {
		this.fairplayScore = fairplayScore;
	}
	public String getAbilityEvaluationTypeCode() {
		return abilityEvaluationTypeCode;
	}
	public void setAbilityEvaluationTypeCode(String abilityEvaluationTypeCode) {
		this.abilityEvaluationTypeCode = abilityEvaluationTypeCode;
	}
	public String getAbilityEvaluationType() {
		return abilityEvaluationType;
	}
	public void setAbilityEvaluationType(String abilityEvaluationType) {
		this.abilityEvaluationType = abilityEvaluationType;
	}
	
}
