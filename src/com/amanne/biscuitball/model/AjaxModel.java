package com.amanne.biscuitball.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.amanne.biscuitball.mybatis.CityDTO;
import com.amanne.biscuitball.mybatis.CourtDTO;
import com.amanne.biscuitball.mybatis.ICourtDAO;
import com.amanne.biscuitball.mybatis.ICrewDAO;
import com.amanne.biscuitball.mybatis.IMeetingDAO;
import com.amanne.biscuitball.mybatis.IRegionDAO;
import com.amanne.biscuitball.mybatis.IUserDAO;
import com.amanne.biscuitball.mybatis.MeetingDTO;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Service
public class AjaxModel
{
	@Autowired
	private SqlSession sqlSession;
	
	public String getCityList(String regionCode)
	{
		IRegionDAO dao = sqlSession.getMapper(IRegionDAO.class);
		ArrayList<CityDTO> list = dao.getCityList(regionCode);
		JSONArray arr = new JSONArray();
		JSONObject obj = null;
		
		for(CityDTO dto : list)
		{
			obj = new JSONObject();
			obj.put("cityCode", dto.getCityCode());
			obj.put("cityName", dto.getCityName());
			
			arr.add(obj);
		}
		
		return arr.toString();
	}
	
	public int checkEmail(String email)
	{
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		return dao.checkEmail(email);
	}
	
	public int checkTel(String tel)
	{
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		return dao.checkTelephone(tel);
	}
	
	public int checkNickname(String nickname)
	{
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		return dao.checkUserNickname(nickname);
	}
	
	public int checkCourtName(String courtCode, String courtName)
	{
		ICourtDAO dao = sqlSession.getMapper(ICourtDAO.class);
		return dao.checkCourtName(courtCode, courtName);
	}
	
	public int checkCrewName(String crewName)
	{
		ICrewDAO dao = sqlSession.getMapper(ICrewDAO.class);
		return dao.checkCrewName(crewName);
	}
	
	public String getCourtListByCity(String cityCode)
	{
		ICourtDAO dao = sqlSession.getMapper(ICourtDAO.class);
		ArrayList<CourtDTO> list = dao.getCourtListByCity(cityCode);
		JSONArray arr = new JSONArray();
		JSONObject obj = null;
		
		for(CourtDTO dto : list)
		{
			obj = new JSONObject();

			obj.put("courtCode", dto.getCourtCode());
			obj.put("courtRegisteredDate", dto.getCourtRegisteredDate());
			obj.put("cityCode", dto.getCityCode());
			obj.put("cityName", dto.getCityName());
			obj.put("mapPosition", dto.getMapPosition());
			obj.put("mapPositionX", dto.getMapPositionX());
			obj.put("mapPositionY", dto.getMapPositionY());
			obj.put("registrantAccountCode", dto.getRegistrantAccountCode());
			obj.put("registrantNickname", dto.getRegistrantNickname());
			obj.put("myCourtCount", dto.getMyCourtCount());
			obj.put("courtImg1", dto.getCourtImg1());
			obj.put("courtImg2", dto.getCourtImg2());
			obj.put("courtImg3", dto.getCourtImg3());
			obj.put("courtNameCode", dto.getCourtNameCode());
			obj.put("courtName", dto.getCourtName());
			obj.put("courtNamePollRate", dto.getCourtNamePollRate());
			obj.put("avgCourtManageScore", dto.getAvgCourtManageScore());
			obj.put("avgCourtSatisfaction", dto.getAvgCourtSatisfaction());
			obj.put("courtRating", dto.getCourtRating());
			obj.put("courtCapacityCode", dto.getCourtCapacityCode());
			obj.put("minCourtCapacity", dto.getMinCourtCapacity());
			obj.put("maxCourtCapacity", dto.getMaxCourtCapacity());
			obj.put("toilet", dto.getToilet());
			obj.put("toiletConfidence", dto.getToiletConfidence());
			obj.put("shower", dto.getShower());
			obj.put("showerConfidence", dto.getShowerConfidence());
			obj.put("parkinglot", dto.getParkinglot());
			obj.put("parkinglotConfidence", dto.getParkinglotConfidence());
			obj.put("enrollYesCount", dto.getEnrollYesCount());
			obj.put("enrollNoCount", dto.getEnrollNoCount());
			obj.put("delRequestCode", dto.getDelRequestCode());
			obj.put("delRequestDate", dto.getDelRequestDate());
			obj.put("delApproveDate", dto.getDelApproveDate());
			obj.put("delRequestPollYesCount", dto.getDelRequestPollYesCount());
			obj.put("delRequestPollNoCount", dto.getDelRequestPollNoCount());
			obj.put("delAdminCode", dto.getDelAdminCode());
			obj.put("adminDelDate", dto.getAdminDelDate());
			obj.put("courtStatus", dto.getCourtStatus());
			obj.put("blindStatus", dto.getBlindStatus());
			
			arr.add(obj);
		}
		
		return arr.toString();
	}
	
	public String getCourtListByRegion(String regionCode)
	{
		ICourtDAO dao = sqlSession.getMapper(ICourtDAO.class);
		ArrayList<CourtDTO> list = dao.getCourtListByRegion(regionCode);
		JSONArray arr = new JSONArray();
		JSONObject obj = null;
		
		for(CourtDTO dto : list)
		{
			obj = new JSONObject();
			
			obj.put("courtCode", dto.getCourtCode());
			obj.put("courtRegisteredDate", dto.getCourtRegisteredDate());
			obj.put("cityCode", dto.getCityCode());
			obj.put("cityName", dto.getCityName());
			obj.put("mapPosition", dto.getMapPosition());
			obj.put("mapPositionX", dto.getMapPositionX());
			obj.put("mapPositionY", dto.getMapPositionY());
			obj.put("registrantAccountCode", dto.getRegistrantAccountCode());
			obj.put("registrantNickname", dto.getRegistrantNickname());
			obj.put("myCourtCount", dto.getMyCourtCount());
			obj.put("courtImg1", dto.getCourtImg1());
			obj.put("courtImg2", dto.getCourtImg2());
			obj.put("courtImg3", dto.getCourtImg3());
			obj.put("courtNameCode", dto.getCourtNameCode());
			obj.put("courtName", dto.getCourtName());
			obj.put("courtNamePollRate", dto.getCourtNamePollRate());
			obj.put("avgCourtManageScore", dto.getAvgCourtManageScore());
			obj.put("avgCourtSatisfaction", dto.getAvgCourtSatisfaction());
			obj.put("courtRating", dto.getCourtRating());
			obj.put("courtCapacityCode", dto.getCourtCapacityCode());
			obj.put("minCourtCapacity", dto.getMinCourtCapacity());
			obj.put("maxCourtCapacity", dto.getMaxCourtCapacity());
			obj.put("toilet", dto.getToilet());
			obj.put("toiletConfidence", dto.getToiletConfidence());
			obj.put("shower", dto.getShower());
			obj.put("showerConfidence", dto.getShowerConfidence());
			obj.put("parkinglot", dto.getParkinglot());
			obj.put("parkinglotConfidence", dto.getParkinglotConfidence());
			obj.put("enrollYesCount", dto.getEnrollYesCount());
			obj.put("enrollNoCount", dto.getEnrollNoCount());
			obj.put("delRequestCode", dto.getDelRequestCode());
			obj.put("delRequestDate", dto.getDelRequestDate());
			obj.put("delApproveDate", dto.getDelApproveDate());
			obj.put("delRequestPollYesCount", dto.getDelRequestPollYesCount());
			obj.put("delRequestPollNoCount", dto.getDelRequestPollNoCount());
			obj.put("delAdminCode", dto.getDelAdminCode());
			obj.put("adminDelDate", dto.getAdminDelDate());
			obj.put("courtStatus", dto.getCourtStatus());
			obj.put("blindStatus", dto.getBlindStatus());
			
			arr.add(obj);
		}
		
		return arr.toString();
	}
	
	// 좌표로 코트 코드 가져오는 메소드
	public String getCourtCodeByPosition(String posx, String posy)
	{
		ICourtDAO dao = sqlSession.getMapper(ICourtDAO.class);
		System.out.println(posx+","+posy);
		
		String courtCode = dao.getCourtByMapPosition(posx, posy);
		
		CourtDTO dto = dao.getCourt(courtCode);
		
		JSONObject obj = null;
		
		obj = new JSONObject();
		
		obj.put("courtCode", dto.getCourtCode());
		obj.put("courtRegisteredDate", dto.getCourtRegisteredDate());
		obj.put("cityCode", dto.getCityCode());
		obj.put("cityName", dto.getCityName());
		obj.put("mapPosition", dto.getMapPosition());
		obj.put("mapPositionX", dto.getMapPositionX());
		obj.put("mapPositionY", dto.getMapPositionY());
		obj.put("registrantAccountCode", dto.getRegistrantAccountCode());
		obj.put("registrantNickname", dto.getRegistrantNickname());
		obj.put("myCourtCount", dto.getMyCourtCount());
		obj.put("courtImg1", dto.getCourtImg1());
		obj.put("courtImg2", dto.getCourtImg2());
		obj.put("courtImg3", dto.getCourtImg3());
		obj.put("courtNameCode", dto.getCourtNameCode());
		obj.put("courtName", dto.getCourtName());
		obj.put("courtNamePollRate", dto.getCourtNamePollRate());
		obj.put("avgCourtManageScore", dto.getAvgCourtManageScore());
		obj.put("avgCourtSatisfaction", dto.getAvgCourtSatisfaction());
		obj.put("courtRating", dto.getCourtRating());
		obj.put("courtCapacityCode", dto.getCourtCapacityCode());
		obj.put("minCourtCapacity", dto.getMinCourtCapacity());
		obj.put("maxCourtCapacity", dto.getMaxCourtCapacity());
		obj.put("toilet", dto.getToilet());
		obj.put("toiletConfidence", dto.getToiletConfidence());
		obj.put("shower", dto.getShower());
		obj.put("showerConfidence", dto.getShowerConfidence());
		obj.put("parkinglot", dto.getParkinglot());
		obj.put("parkinglotConfidence", dto.getParkinglotConfidence());
		obj.put("enrollYesCount", dto.getEnrollYesCount());
		obj.put("enrollNoCount", dto.getEnrollNoCount());
		obj.put("delRequestCode", dto.getDelRequestCode());
		obj.put("delRequestDate", dto.getDelRequestDate());
		obj.put("delApproveDate", dto.getDelApproveDate());
		obj.put("delRequestPollYesCount", dto.getDelRequestPollYesCount());
		obj.put("delRequestPollNoCount", dto.getDelRequestPollNoCount());
		obj.put("delAdminCode", dto.getDelAdminCode());
		obj.put("adminDelDate", dto.getAdminDelDate());
		obj.put("courtStatus", dto.getCourtStatus());
		obj.put("blindStatus", dto.getBlindStatus());
		
		return obj.toString();
	}
	
	// 함께농구 모임 리스트 반환(모임 일시, 모임 타입, 코트)
	public String getMeetingListByTogetherPlay( String courtRegistrationCode, String meetingDate, String meetingTypeCode,  int start,  int end)
	{
		IMeetingDAO dao = sqlSession.getMapper(IMeetingDAO.class);
		ArrayList<MeetingDTO> list = dao.getMeetingListByCityDate(courtRegistrationCode, meetingDate, meetingTypeCode, start, end);
		JSONArray arr = new JSONArray();
		JSONObject obj = null;
		
		for(MeetingDTO dto : list)
		{
			obj = new JSONObject();
			
			obj.put("meetingCode",dto.getMeetingCode() );
			obj.put("meetingSubject", dto.getMeetingSubject() );
			obj.put("meetingPeopleNumber", dto.getMeetingPeopleNumber() );
			obj.put("meetingOpenDate", dto.getMeetingOpenDate() );
			obj.put("meetingDate", dto.getMeetingDate() );
			obj.put("meetingCloseDate", dto.getMeetingCloseDate() );
			obj.put("meetingEndDate", dto.getMeetingEndDate() );
			obj.put("meetingNotice", dto.getMeetingNotice() );
			obj.put("meetingTypeCode",dto.getMeetingTypeCode() );
			obj.put("meetingTypeName", dto.getMeetingTypeName() );
			obj.put("quickPlayOrNot", dto.getQuickPlayOrNot() );
			obj.put("courtRegistrationCode",dto.getCourtRegistrationCode() );
			obj.put("minTierCode", dto.getMinTierCode() );
			obj.put("maxTierCode", dto.getMaxTierCode() );
			obj.put("confirmOrNot",dto.getConfirmOrNot() );
			obj.put("blindOrNot", dto.getBlindOrNot());
			obj.put("nowPeopleNumber",dto.getNowPeopleNumber() );
			obj.put("captainName",dto.getCaptainName() );
			obj.put("returnValue",dto.getReturnValue() );
			
			arr.add(obj);
		}
		
		return arr.toString();
	}
}
