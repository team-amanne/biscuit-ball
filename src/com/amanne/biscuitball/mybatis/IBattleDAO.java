package com.amanne.biscuitball.mybatis;

import java.util.List;

public interface IBattleDAO
{
	public int makeBattleRequest(BattleDTO dto); // 대전신청

	public int joinBattle(List<BattleJoinDTO> list); // 대전참가

	public int acceptBattleRequest(String requestCode); // 대전신청수락

	public int reconsiderBattleRequest(String requestCode); // 대전신청재고

	public int denyBattleRequest(String requestCode); // 대전신청거절

	public int inputRefereePlaylog(BattleRefereePlaylogDTO dto); // 심판플레이로그입력

	public int cancelBattle(String requestCode); // 합의취소

	public int inputLeaderPlaylog(BattleLeaderPlaylogDTO dto); // 리더플레이로그입력

	public int cancelBattleRequest(String requestCode); // 대전취소



	public List<BattleDTO> getReceivedBattleRequestList(String crewCode, int start, int end); // 받은 대전신청 조회

	public int countReceivedBattleRequests(String crewCode); // 받은 대전신청 수

	public List<BattleDTO> getScheduledBattleList(String crewCode, int start, int end); // 예정된 대전 조회

	public int countScheduledBattles(String crewCode); // 예정된 대전 수

	public List<BattleDTO> getPastBattleList(String crewCode, int start, int end); // 참여대전 조회

	public int countPastBattles(String crewCode); // 참여대전 수

	public List<BattleDTO> getPastBattleListByReferee(String refMemberCode, int start, int end); // 심판으로 참여한 대전 조회

	public int countPastBattlesByReferee(String refMemberCode); // 심판으로 참여한 대전 수

	public List<BattleDTO> getReconsideredBattleList(String crewCode, int start, int end); // 재고된 대전 조회(처리30일이내

	public int countReconsideredBattles(String crewCode); // 재고된 대전 수

	

	public BattleDTO getBattle(String battleRequestCode); // 특정 대전 조회

	

	public List<BattleDTO> getBattleListNoRefereePlaylog(String refMemberCode, int start, int end); // 심판플레이로그 미입력 대전 조회

	public int countBattlesNoRefereePlaylog(String refMemberCode); // 심판플레이로그 미입력 대전 수

	public List<BattleDTO> getBattleListNoLeaderPlaylog(String crewCode, int start, int end); // 리더플레이로그 미입력 대전 조회

	public int countBattlesNoLeaderPlaylog(String crewCode); // 리더플레이로그 미입력 대전 수
}
