package com.amanne.biscuitball.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.amanne.biscuitball.mybatis.CityDTO;
import com.amanne.biscuitball.mybatis.CourtDTO;
import com.amanne.biscuitball.mybatis.CourtReviewDTO;
import com.amanne.biscuitball.mybatis.ICourtDAO;
import com.amanne.biscuitball.mybatis.ICrewDAO;
import com.amanne.biscuitball.mybatis.IMeetingDAO;
import com.amanne.biscuitball.mybatis.IRegionDAO;
import com.amanne.biscuitball.mybatis.IUserDAO;
import com.amanne.biscuitball.util.MyUtil;
import com.amanne.biscuitball.mybatis.MeetingDTO;
import com.amanne.biscuitball.mybatis.RegionDTO;
import com.amanne.biscuitball.mybatis.UserDTO;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.nurigo.java_sdk.exceptions.CoolsmsException;



@Service
public class AjaxModel
{
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private MyUtil util;
	
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
		obj.put("courtCapacityComfidence", dto.getCourtCapacityComfidence());
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
	
	public String getCourtReviewList(String courtCode, String userAccountCode, int currentPage, String order)
	{
		ICourtDAO dao = sqlSession.getMapper(ICourtDAO.class);
		ArrayList<CourtReviewDTO> list = dao.getCourtReviewList(courtCode, userAccountCode, (currentPage-1) * 5 + 1, currentPage * 5, order);
		JSONArray arr = new JSONArray();
		JSONObject obj = null;
		
		for(CourtReviewDTO dto : list)
		{
			obj = new JSONObject();
			obj.put("courtReviewCode", dto.getCourtReviewCode());
			obj.put("courtReviewContent", dto.getCourtReviewContent());
			obj.put("courtReviewManageScore", dto.getCourtReviewManageScore());
			obj.put("courtReviewRegisteredDate", dto.getCourtReviewRegisteredDate().split("\\s")[0]);
			obj.put("courtReviewSatisfaction", dto.getCourtReviewSatisfaction());
			obj.put("courtCode", dto.getCourtCode());
			obj.put("registrantAccountCode", dto.getRegistrantAccountCode());
			obj.put("registrantNickname", dto.getRegistrantNickname());
			obj.put("courtReviewStatus", dto.getCourtReviewStatus());
			obj.put("likes", dto.getLikes());
			obj.put("dislikes", dto.getDislikes());
			obj.put("pollOrNot", dto.getPollOrNot());
			obj.put("pollLikeOrDislike", dto.getPollLikeOrDislike());
			
			arr.add(obj);
		}
		
		return arr.toString();
	}
	
	public String getCourtReviewIndex(String courtCode, int page)
	{
		ICourtDAO courtDao = sqlSession.getMapper(ICourtDAO.class);
		int dataCount = courtDao.countCourtReviews(courtCode);
		int pageCount = util.getPageCount(5, dataCount);
		return util.getAjaxIndexList(page, pageCount);
	}
	
	public String getCourtMeetingList(String courtCode, String meetingDate, int page)
	{
		IMeetingDAO dao = sqlSession.getMapper(IMeetingDAO.class);
		JSONArray arr = new JSONArray();
		JSONObject obj = null;
		ArrayList<MeetingDTO> list = dao.getMeetingListByCourtDate(courtCode, meetingDate, (page-1) * 5 + 1, page * 5);
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
			
			arr.add(obj);
		}
		
		return arr.toString();
	}
	
	public String getCourtMeetingIndex(String courtCode, String meetingDate, int page)
	{
		IMeetingDAO dao = sqlSession.getMapper(IMeetingDAO.class);
		int dataCount = dao.countMeetingListByCourtDate(courtCode, meetingDate);
		int pageCount = util.getPageCount(5, dataCount);
		return util.getAjaxIndexList(page, pageCount);
	}
	
	public int getCourtMeetingCount(String courtCode, String meetingDate)
	{
		IMeetingDAO dao = sqlSession.getMapper(IMeetingDAO.class);
		return dao.countMeetingListByCourtDate(courtCode, meetingDate);
	}
		
	// 함께농구 모임 리스트 반환(모임 일시, 모임 타입, 코트)
	public String getMeetingListByTogetherPlay( String courtRegistrationCode, String meetingDate, String meetingTypeCode, int start, int end)
	{
		IMeetingDAO dao = sqlSession.getMapper(IMeetingDAO.class);
		System.out.println(courtRegistrationCode+" "+meetingDate+" "+meetingTypeCode+" "+start+" "+end);
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
	
	public String getMeetingListByRegion(String meetingDate)
	{
		JSONArray result = new JSONArray();
		IMeetingDAO dao = sqlSession.getMapper(IMeetingDAO.class);
		IRegionDAO rgdao = sqlSession.getMapper(IRegionDAO.class);
		ArrayList<RegionDTO> regionList = rgdao.getRegionList();
		
		for(RegionDTO region : regionList)
		{
			JSONObject regobj = new JSONObject();
			regobj.put("regionCode", region.getRegionCode());
			regobj.put("regionName", region.getRegionName());

			JSONArray arr = new JSONArray();
			int count = dao.countMeetingListByRegionDate(region.getRegionCode(), meetingDate);
			
			regobj.put("meetingCount", count);
			
			ArrayList<MeetingDTO> meets = dao.getMeetingListByRegionDate(region.getRegionCode(), meetingDate, 1, count);
			for(MeetingDTO dto : meets)
			{
				JSONObject obj = new JSONObject();
				
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
				obj.put("cityCode", dto.getCityCode());
				obj.put("cityName", dto.getCityName());
				obj.put("courtName", dto.getCourtName());
				
				arr.add(obj);
			}
			
			regobj.put("meetingList", arr);
			result.add(regobj);
		}
		
		return result.toString();
	}
	
	
	// 함께농구 모임 예정리스트 반환(모임 일시, 모임 타입, 코트)
	public String getJoinMeetingList()
	{
		UserInfo info = (UserInfo)session.getAttribute("userInfo");
		
		IMeetingDAO dao = sqlSession.getMapper(IMeetingDAO.class);
		ArrayList<MeetingDTO> list = dao.getJoinMeetingList(info.getUserAcctCode());
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
			obj.put("courtName",dto.getCourtName());
			obj.put("nowPeopleNumber",dto.getNowPeopleNumber() );
			obj.put("captainAcctCode",dto.getCaptainAcctCode() );
			obj.put("captainName",dto.getCaptainName() );
			obj.put("returnValue",dto.getReturnValue() );
			System.out.println(obj);
			arr.add(obj);

		}
		
		return arr.toString();
	}
		
		// 미입력 플레이로그 리스트
		public String getNotInputPlaylogList()
		{
			UserInfo info = (UserInfo)session.getAttribute("userInfo");
			
			IMeetingDAO dao = sqlSession.getMapper(IMeetingDAO.class);
			ArrayList<MeetingDTO> list = dao.getMeetingListNotInputPlaylog(info.getUserAcctCode());
			JSONArray arr = new JSONArray();
			JSONObject obj = null;
			System.out.println("ajaxMo");
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
				obj.put("courtName",dto.getCourtName());
				obj.put("nowPeopleNumber",dto.getNowPeopleNumber() );
				obj.put("captainAcctCode",dto.getCaptainAcctCode() );
				obj.put("captainName",dto.getCaptainName() );
				obj.put("returnValue",dto.getReturnValue() );
				System.out.println(obj);
				arr.add(obj);
			}
		
		return arr.toString();
	}
		
	// 이메일로 유저코드 가져오기
	public String getUserCodeByEmail(String userEmail)
	{
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		String userCode = dao.getUserCodeByEmail(userEmail);
		
		return userCode;
	}
	
	// 유저코드로 비번재설정코드 생성
	public UserDTO getCodeByUserCode(UserDTO dto)
	{
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);

		dao.issuePasswordResetCode(dto);
		
		return dto;
	}
	
	// 비밀번호 재설정 코드 메일 발송
	public int sendEmail(String userEmail, String issueCode)
	{
		int result=0;
		
		String host = "smtp.gmail.com";
		String subject = "BiscuitBall 비밀번호 재설정 인증 코드";
		String fromName = "BiscuitBall";
		String from = "authorkim0921@gmail.com";
		String to1 = userEmail;
		
		String content = "비밀번호 재설정 코드는 [ "+issueCode+" ] 입니다";
		
		try
		{
			Properties props = new Properties();
			
			props.put("mail.smtp.starttls.enable", "true");
			props.put("mail.transport.protocol","smtp");
			props.put("mail.smtp.host", host);
			props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			props.put("mail.smtp.user", from);
			props.put("mail.smtp.auth", "true");
			
			Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() 
											{
												protected PasswordAuthentication getPasswordAuthentication() 
												{
													return new PasswordAuthentication("authorkim0921", "@juber2539");
												} 
											});
			
			Message msg = new MimeMessage(mailSession);
			msg.setFrom(new InternetAddress(from, MimeUtility.encodeText(fromName, "UTF-8", "B"))); // 보내는 사람 설정
			
			InternetAddress[] address1 = { new InternetAddress(to1)};
			msg.setRecipients(Message.RecipientType.TO, address1);	// 받는사람 설정 1
			msg.setSubject(subject);	// 제목 설정
			msg.setSentDate(new java.util.Date());	// 보내는 날짜 설정
			msg.setContent(content, "text/html;charset=euc-kr");
			
			Transport.send(msg);	// 메일 보내기
			
			result = 1;
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return result;
	}
	

	// 비밀번호 재설정 
	public UserDTO resetPassword(UserDTO dto, String issueCode, String userPassword)
	{
		//System.out.println(dto.getUserCode()+" "+ issueCode+ " " + userPassword+ " "+ "/확인용");
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		dao.resetPassword(dto, issueCode, userPassword);
		
		return dto;
	}
	

    public String sendSms(String tel, String authNum)
    {   
    
    String api_key = "NCSS6MO67UHDWOA0"; 
    // 발급받은 APIKEY
    String api_secret = "1OE23338HFQL10Q2K7DAT6KHPDVHJCGM";
    // 발급받은 APIKEY SECRET KEY

    System.out.println("번호 : " + tel);
    net.nurigo.java_sdk.api.Message coolsms = new net.nurigo.java_sdk.api.Message(api_key, api_secret);

    System.out.println("Hello");

    // 4 params(to, from, type, text) are mandatory. must be filled
    HashMap<String, String> params = new HashMap<String, String>();
    params.put("to", tel);
    params.put("from", "01087382204"); // 인증받은 발신번호
    params.put("type", "SMS");
    params.put("text", "[COME-IT] 인증번호 : " + authNum);
    params.put("app_version", "test app 1.2"); // application name and version

    try
    {
       // send() 는 메시지를 보내는 함수
       org.json.simple.JSONObject obj = (org.json.simple.JSONObject)coolsms.send(params);
       System.out.println("에러코드" + obj.get("error_count"));

    } catch (CoolsmsException e)
    {
       System.out.println(e.getMessage());
       System.out.println(e.getCode());
    }

    return authNum;
    }
    
    public String getSpeedMeetingCode(String cityCode, String meetingTypeCode, String ballExistOrNot, int speedSeqNumber)
    {
    	UserInfo info = (UserInfo)session.getAttribute("userInfo");
    	
    	IMeetingDAO dao = sqlSession.getMapper(IMeetingDAO.class);
		ArrayList<MeetingDTO> list = dao.getSpeedMeetingCode(cityCode, meetingTypeCode, ballExistOrNot, info.getUserAcctCode(), speedSeqNumber);
		
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
			obj.put("cityCode", dto.getCityCode());
			obj.put("cityName", dto.getCityName());
			obj.put("courtName", dto.getCourtName());			
			arr.add(obj);
		}
	
		return arr.toString();
    }
    
    
}
