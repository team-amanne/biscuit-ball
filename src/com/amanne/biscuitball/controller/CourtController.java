/*============================================
 	CourtController.java
 	생성일: 2020.07.24
 	최근수정일: 2020.07.24
=============================================*/

package com.amanne.biscuitball.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.amanne.biscuitball.model.CourtModel;
import com.amanne.biscuitball.model.UserInfo;
import com.amanne.biscuitball.mybatis.CourtDTO;
import com.amanne.biscuitball.mybatis.CourtDeleteRequestDTO;
import com.amanne.biscuitball.mybatis.CourtNameDTO;
import com.amanne.biscuitball.mybatis.CourtReviewDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Controller
@RequestMapping("/court")
public class CourtController
{
	@Autowired
	private CourtModel courtModel;
	
	@Autowired
	private HttpSession session;
	
	@RequestMapping("/{courtCode}")
	public String court(Model model, @PathVariable("courtCode") String courtCode
						, @RequestParam(required=false) String registerResult
						, @RequestParam(required=false) String removeResult
						, @RequestParam(required=false) String requestResult)
	{
		String view = null;
		
		CourtDTO court = null;
		
		court = courtModel.getCourt(courtCode, (UserInfo)session.getAttribute("userInfo"));
		
		if(court.getBlindStatus().equals("YES"))
		{
			view = "/court/CourtDelComplete";
			return view;
		}
		
		model.addAttribute("court", court);
		
		if(registerResult != null) 
		{
			if(registerResult.equals("success"))
				model.addAttribute("alert", "리뷰를 등록하였습니다.");
			else if(registerResult.equals("fail"))
				model.addAttribute("alert", "리뷰 등록에 실패하였습니다.");
		}
		else if(removeResult != null)
		{
			if(removeResult.equals("success"))
				model.addAttribute("alert", "리뷰를 삭제하였습니다.");
			else if(removeResult.equals("fail"))
				model.addAttribute("alert", "리뷰 삭제에 실패하였습니다.");
		}
		else if(requestResult != null)
		{
			if(requestResult.equals("success"))
				model.addAttribute("alert", "코트 삭제 요청이 완료되었습니다.");
			else if(requestResult.equals("success"))
				model.addAttribute("alert", "코트 삭제 요청을 실패하였습니다.");
		}
		
		view = "/court/CourtPage";
		return view;
	}
	
	@RequestMapping("/register")
	public String courtRegisterForm(Model model)
	{
		String view = null;
		
		model.addAttribute("regions", courtModel.getRegionList());
		
		view = "/court/CourtRegistration";
		return view;
	}
	
	@RequestMapping("/registerdo")
	public String courtRegister(HttpServletRequest request)
	{
		String view = "redirect:/court/registerok";
		UserInfo info = (UserInfo)session.getAttribute("userInfo");
		String result = null;
		
		// 이미지 업로드 처리
		String root = session.getServletContext().getRealPath("/");
		String savePath = File.separator + "upload" + File.separator + "images" + File.separator + "court";
		File dir = new File(root + savePath);
		
		System.out.println(savePath);
		
		if(!dir.exists()) 
			dir.mkdirs();
		
		String encType = "UTF-8";
		int maxFileSize = 5 * 1024 * 1024;
		
		try 
		{
			MultipartRequest req = null;
			req = new MultipartRequest(request, root + savePath, maxFileSize, encType, new DefaultFileRenamePolicy());
			String saveFileName1 = req.getFilesystemName("courtImg1");
			String saveFileName2 = req.getFilesystemName("courtImg2");
			String saveFileName3 = req.getFilesystemName("courtImg3");
			
			CourtDTO dto = new CourtDTO();
			
			dto.setCityCode(req.getParameter("cityCode"));
			dto.setMapPositionX(req.getParameter("mapPositionX"));
			dto.setMapPositionY(req.getParameter("mapPositionY"));
			dto.setMapPosition(req.getParameter("mapPositionX") + "," + req.getParameter("mapPositionY"));
			if(info != null)
				dto.setRegistrantAccountCode(info.getUserAcctCode());
			dto.setCourtCapacityCode(req.getParameter("courtCapacityCode"));
			dto.setCourtName(req.getParameter("courtName"));
			dto.setCourtImg1(savePath + File.separator + saveFileName1);
			dto.setCourtImg2(savePath + File.separator + saveFileName2);
			dto.setCourtImg3(savePath + File.separator + saveFileName3);
			
			result = courtModel.registerCourt(dto);
			
			if(result != null)
				view += "?courtCode=" + result;
		} 
		catch (Exception e) 
		{
			System.out.println(e.toString());
			e.printStackTrace();
		}
		
		return view;
	}

	@RequestMapping("/registerok")
	public String courtRegisterSuccess(Model model, @RequestParam(required=false) String courtCode)
	{
		String view = null;
		
		UserInfo info = (UserInfo)session.getAttribute("userInfo");
		model.addAttribute("court", courtModel.getCourt(courtCode, info));
		
		view = "/court/CourtRegistrationComplete";
		
		return view;
	}
	
	@RequestMapping("/{courtCode}/deleterequest")
	public String requestDelete(Model model, @PathVariable("courtCode") String courtCode)
	{
		String view = "redirect:/court/" + courtCode;
		CourtDeleteRequestDTO dto = new CourtDeleteRequestDTO();
		UserInfo info = (UserInfo)session.getAttribute("userInfo");
		
		dto.setCourtCode(courtCode);
		if(info != null)
			dto.setApplicantAccountCode(info.getUserAcctCode());
		
		if( courtModel.requestCourtDelete(dto) > 0)
			view += "?requestResult=success";
		else
			view += "?requestResult=fail";
		
		return view;
	}	
	
	@RequestMapping("/{courtCode}/delete")
	public String deleteCourt(Model model, @PathVariable("courtCode") String courtCode)
	{
		String view = "redirect:/court/" + courtCode;
		UserInfo info = (UserInfo)session.getAttribute("adminInfo");

		if( courtModel.deleteCourtAdmin(info.getUserCode(), courtCode) != 1)
			view += "?requestResult=fail";
		
		return view;
	}
	
	@RequestMapping("/{courtCode}/review/register")
	public String courtReviewRegisterForm(Model model, @PathVariable("courtCode") String courtCode )
	{
		String view = null;
		
		CourtDTO court = null;
		
		court = courtModel.getCourt(courtCode, (UserInfo)session.getAttribute("userInfo"));
		
		model.addAttribute("court", court);
		
		view = "/court/CourtReviewRegistration";
		
		return view;
	}
	
	@RequestMapping("/{courtCode}/review/registerdo")
	public String courtReviewRegister(@PathVariable("courtCode") String courtCode , CourtReviewDTO dto)
	{
		String view = "redirect:/court/" + courtCode;
		UserInfo info = (UserInfo)session.getAttribute("userInfo");
		
		dto.setRegistrantAccountCode(info.getUserAcctCode());
		if (courtModel.registerCourtReview(dto) > 0)
			view += "?registerResult=success";
		else
			view += "?registerResult=fail";
		
		return view;
	}
	
	@RequestMapping("/{courtCode}/review/{reviewCode}/delete")
	public String courtReviewDelete(@PathVariable("courtCode") String courtCode, @PathVariable("reviewCode") String reviewCode)
	{
		String view = "redirect:/court/" + courtCode;
		
		if(courtModel.removeCourtReview(reviewCode) > 0)
			view += "?removeResult=success";
		else
			view += "?removeResult=fail";
		
		return view;
	}
	
	@RequestMapping("/{courtCode}/name")
	public String courtNameList(Model model, @PathVariable("courtCode") String courtCode, @RequestParam(required=false) String page)
	{
		String view = "/court/CourtNameList_pu";
		UserInfo info = (UserInfo)session.getAttribute("userInfo");
		
		model.addAttribute("courtCode", courtCode);
		model.addAttribute("indexList", courtModel.getCourtNameIndex(
				courtCode, String.format("/court/%s/name", courtCode), page != null ? Integer.parseInt(page) : 1));
		model.addAttribute("courtNameList", courtModel.getCourtNameList(courtCode, info != null ? info.getUserAcctCode() : null
				, page != null ? Integer.parseInt(page) : 1, "RANK"));
		
		return view;
	}
	
	@RequestMapping("/{courtCode}/name/register")
	public String courtNameRegisterForm(Model model, @PathVariable("courtCode") String courtCode)
	{
		String view = "/court/CourtNameRegistration_pu01";
		
		model.addAttribute("courtCode", courtCode);
		
		return view;
	}
	
	@RequestMapping("/{courtCode}/name/registerdo")
	public String courtNameRegister(Model model, @PathVariable("courtCode") String courtCode, @RequestParam String courtName)
	{
		String view = "redirect:/court/" + courtCode + "/name";
		UserInfo info = (UserInfo)session.getAttribute("userInfo");
		CourtNameDTO dto = new CourtNameDTO();
		
		dto.setCourtName(courtName);
		dto.setCourtCode(courtCode);
		if(info != null)
			dto.setRegistrantAccountCode(info.getUserAcctCode());
		
		courtModel.registerCourtName(dto);
		
		return view;
	}
	
}

