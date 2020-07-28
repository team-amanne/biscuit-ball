package com.amanne.biscuitball.model;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.amanne.biscuitball.mybatis.IMeetingDAO;
import com.amanne.biscuitball.mybatis.IRegionDAO;
import com.amanne.biscuitball.mybatis.IUserDAO;
import com.amanne.biscuitball.mybatis.MeetingDTO;
import com.amanne.biscuitball.mybatis.MeetingMemberDTO;
import com.amanne.biscuitball.mybatis.RegionDTO;
import com.amanne.biscuitball.mybatis.UserDTO;

@Service
public class PlayModel
{
   @Autowired
   private SqlSession sqlSession;
   
   @Autowired
   private HttpSession session;
   
   
   // 광역시도 출력 메소드
   public ArrayList<RegionDTO> regionPrint()
   {
      ArrayList<RegionDTO> regionList = new ArrayList<RegionDTO>();
      
      IRegionDAO regionDao = sqlSession.getMapper(IRegionDAO.class);
      regionList=regionDao.getRegionList();
      
      return regionList;
   }
   
   // 특정 유저 홈코트
   public UserDTO userHomeCourt(String userAccountCode)
   {
      UserDTO userDto = new UserDTO();
      IUserDAO userDao = sqlSession.getMapper(IUserDAO.class);
      userDao.getUser(userAccountCode);
      
      return userDto;
   }
   
   /*
   // 개설 하는 유저 정보 가져오기
   public void playUserInfo(ModelAndView modelAndView, HttpServletRequest request)   // 회원정보 조회
   {
      // 요청 데이터 수신
         HttpSession session = request.getSession();
         UserInfo userInfo = (UserInfo) session.getAttribute("userInfo");   
         
         // 작업객체생성
         IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
         
         // 작업준비
         UserDTO user = dao.getUser(userInfo.getUserAcctCode());
         modelAndView.addObject("user", user);
         modelAndView.setViewName("/play/PlayCreateMeeting");            
   }
   */
   
   // 개설 하는 유저 정보 가져오기
      public UserDTO playUserInfo(UserInfo userInfo)   // 회원정보 조회
      {
            
            // 작업객체생성
            IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
            
            // 작업준비
            UserDTO userDto = dao.getUser(userInfo.getUserAcctCode());
            
            return userDto;
      }
   
      // 모임 개설 하기
      public String createMeeting(MeetingDTO meetingDTO, MeetingMemberDTO meetingMemberDTO)
      {
         IMeetingDAO dao = sqlSession.getMapper(IMeetingDAO.class);
                
         UserInfo userInfo = (UserInfo) session.getAttribute("userInfo"); 
         
         meetingDTO.setOpenerAcctCode(userInfo.getUserAcctCode());
         /*
         System.out.println(meetingDTO.getMeetingSubject());
         System.out.println(meetingDTO.getMeetingPeopleNumber());
         System.out.println(meetingDTO.getMeetingDate());
         System.out.println(meetingDTO.getMeetingEndDate());
         System.out.println(meetingDTO.getMeetingCloseDate());
         System.out.println(meetingDTO.getMeetingNotice());
         System.out.println(meetingDTO.getAblLimitCode());
         System.out.println(meetingDTO.getMeetingTypeCode());
         System.out.println(meetingDTO.getQuickPlayOrNot());
         System.out.println(meetingDTO.getCourtRegistrationCode());
         System.out.println(meetingDTO.getOpenerAcctCode());
         System.out.println(meetingMemberDTO.getBallExistOrNot()); 
         */ 
         dao.registerMeeting(meetingDTO, meetingMemberDTO);
         String result = meetingDTO.getReturnValue();
         //System.out.println(result);
         if(result != null)
         {  
            return result;
         }
         else 
         {
            return "";
         }

      }
      
      // 모임상세 (함께농구)
      public MeetingDTO getMeetingList(String meetingCode)
      {
         IMeetingDAO meetingdao = sqlSession.getMapper(IMeetingDAO.class);
         
         MeetingDTO meetingdto = meetingdao.getMeeting(meetingCode);
         ArrayList<MeetingMemberDTO> meetingMemberList = meetingdao.getMeetingMemberList(meetingCode);
         meetingdto.setMeetingMemberList(meetingMemberList);
         
         return meetingdto;
      }
      
      // 광역시도 이름 얻는 모델 메소드... (코트DTO에 집어넣을 것)
      public RegionDTO getRegionName(String regioncode)
      {
         IRegionDAO regiondao =sqlSession.getMapper(IRegionDAO.class);
         
         RegionDTO regiondto = regiondao.getRegionName(regioncode);
         
         return regiondto;
      }
   
   
   
}