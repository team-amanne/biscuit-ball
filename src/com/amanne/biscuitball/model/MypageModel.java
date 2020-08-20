package com.amanne.biscuitball.model;

import java.io.File;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import com.amanne.biscuitball.mybatis.CityDTO;
import com.amanne.biscuitball.mybatis.IRegionDAO;
import com.amanne.biscuitball.mybatis.IUserDAO;
import com.amanne.biscuitball.mybatis.RegionDTO;
import com.amanne.biscuitball.mybatis.UserDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Service
public class MypageModel
{
	@Autowired
	private SqlSession sqlSession;
	
	public void userDTOCodeChange(UserDTO user)	// YES NO 코트로 변경
	{
		if(user.getSnsSync().equals("YES")) user.setSnsSync("ZU01");
		else user.setSnsSync("ZU02");
		
		if(user.getSmsReceive().equals("YES")) user.setSmsReceive("ZU01");
		else user.setSmsReceive("ZU02");
		
		if(user.getCityOpen().equals("YES")) user.setCityOpen("ZU01");
		else user.setCityOpen("ZU02");
		
		if(user.getAchvOpen().equals("YES")) user.setAchvOpen("ZU01");
		else user.setAchvOpen("ZU02");
		
		if(user.getGenderOpen().equals("YES")) user.setGenderOpen("ZU01");
		else user.setGenderOpen("ZU02");
		
		if(user.getCourtOpen().equals("YES")) user.setCourtOpen("ZU01");
		else user.setCourtOpen("ZU02");
		
		if(user.getPlaylogOpen().equals("YES")) user.setPlaylogOpen("ZU01");
		else user.setPlaylogOpen("ZU02");

	}
	
	public void myPage(ModelAndView modelAndView, HttpServletRequest request)	// 회원정보 조회
	{
		// 요청 데이터 수신
		HttpSession session = request.getSession();
		UserInfo userInfo = (UserInfo) session.getAttribute("userInfo");	
		
		// 작업객체생성
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		
		// 작업준비
		UserDTO user = dao.getUser(userInfo.getUserAcctCode());
		
		modelAndView.addObject("user", user);
		modelAndView.setViewName("/mypage/MyPage");		
	

	}
	
	public void mypageinfoupdate(Model model, HttpServletRequest request) // 내 정보 수정
	{	
		HttpSession session = request.getSession();
		
		UserInfo userInfo = (UserInfo) session.getAttribute("userInfo");
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		
		UserDTO user = dao.getUser(userInfo.getUserAcctCode());
		
		String tel = (String)request.getParameter("sub_tel") + "-"
		           + (String)request.getParameter("tel2") + "-"
		           + (String)request.getParameter("tel3");
		user.setUserTel(tel);
		user.setUserCityCode((String)request.getParameter("citySelect"));
		user.setUserRegionCode((String)request.getParameter("regionSelect"));
		user.setUserPositionCode((String)request.getParameter("position"));

		userDTOCodeChange(user);
	
		dao.updateUserProfile(user);
		dao.updateUser(user);
		
		dao.getUser(userInfo.getUserAcctCode());
		
		model.addAttribute("user", user);
		
		
	}
	
	public void updateUser(ModelAndView modelAndView, HttpServletRequest request)	// 회원정보 수정
	{
        HttpSession session = request.getSession();

        String root = session.getServletContext().getRealPath("/");
        String imgSavePath = File.separator +"upload" + File.separator + "images" + File.separator + "userProfile";
        String savePath = root + imgSavePath;
        //File.separator
 
	    File dir = new File(savePath);
	         
	    if(!dir.exists())
	       dir.mkdirs();
	         
		String encType = "UTF-8";
		int maxFileSize = 5*1024*1024;
		
		try
		{
			
			UserInfo userInfo = (UserInfo) session.getAttribute("userInfo");
			
			// 작업객체생성
			IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
	
			// 작업준비
			UserDTO user = dao.getUser(userInfo.getUserAcctCode());
			
	
			// 요청이 들어온 url 가져오기
			String oldUrl = request.getHeader("referer");
			for(int n=0; n<4; n++)
				oldUrl = oldUrl.substring(oldUrl.indexOf("/")+1, oldUrl.length());
			if(oldUrl.indexOf("court")!=-1)
				oldUrl = "court";
			
			switch (oldUrl)
			{
				case "mypage/myprofile":
					MultipartRequest multRequest = new MultipartRequest(request, savePath, maxFileSize, encType, new DefaultFileRenamePolicy());
					if((multRequest.getParameter("userRequestType")).equals("1"))	//	 자기소개글 변경
					{
						
						String userProfileTxt = multRequest.getParameter("userProfileTxt");		// 프로필사진 변경				
						user.setUserProfileTxt(userProfileTxt);
						
						
					}
					else if((multRequest.getParameter("userRequestType")).equals("2"))
					{
						
						String userProfileImg = multRequest.getFilesystemName("userProfileImageUpdate");
						userProfileImg = imgSavePath + File.separator + userProfileImg;
						user.setUserProfileImg(userProfileImg);
	
					}
					
					userDTOCodeChange(user);
					
					dao.updateUserProfile(user);
					
					user = dao.getUser(userInfo.getUserAcctCode());
		
					modelAndView.addObject("user", user);
					modelAndView.setViewName("redirect:/mypage/myprofile");	
				
					break;
					
				case "court":
					// 코트  → 내 코트 변경
					String updateUserCourtCode = (String)request.getParameter("userCourtCode");
					user.setUserCourtCode(updateUserCourtCode);
					userDTOCodeChange(user);
					dao.updateUserProfile(user);
					
					user = dao.getUser(userInfo.getUserAcctCode());
	
					modelAndView.setViewName("redirect:/court/" + user.getUserCourtCode());	
				
					break;
		
				default:
					break;
			}

		}catch (Exception e) {
			System.out.println(e.toString());
			e.printStackTrace();
		}
	}
	
	public void myProfile(Model model, HttpServletRequest request)
	{
	      // 요청 데이터 수신
	      HttpSession session = request.getSession();
	      UserInfo userInfo = (UserInfo) session.getAttribute("userInfo");   
	      
	      // 작업객체생성
	      IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
	      
	      // 작업준비
	      UserDTO user = dao.getUser(userInfo.getUserAcctCode());
	  
	      ArrayList<CityDTO> city = cityPrint(user.getUserRegionCode());

	      model.addAttribute("user", user);
	      model.addAttribute("city", city);

    
	}
	
	   
	   // 광역시도 출력 메소드
	   public ArrayList<RegionDTO> regionPrint()
	   {
	      ArrayList<RegionDTO> regionList = new ArrayList<RegionDTO>();
	      
	      IRegionDAO regionDao = sqlSession.getMapper(IRegionDAO.class);
	      regionList=regionDao.getRegionList();
	      
	      return regionList;
      
	   }
	   
	   public ArrayList<CityDTO> cityPrint(String regionCode)
	   {
	      ArrayList<CityDTO> cityList = new ArrayList<CityDTO>();
	      
	      IRegionDAO regionDao = sqlSession.getMapper(IRegionDAO.class);
	      cityList = regionDao.getCityList(regionCode);
	      
	      return cityList;
      
	   }
	   
	  
	   
}
