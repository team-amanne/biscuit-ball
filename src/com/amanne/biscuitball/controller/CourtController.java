/*============================================
 	CourtController.java
 	생성일: 2020.07.24
 	최근수정일: 2020.07.30
=============================================*/

package com.amanne.biscuitball.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.nio.file.Files;

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
		
		
		if(courtCode.equals("search"))
			return searchForm(model);
		
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
		String savePath = File.separator + "temp" + File.separator + "images";
		File dir = new File(root + savePath);
		
		if(!dir.exists()) 
			dir.mkdirs();
		
		String encType = "UTF-8";
		int maxFileSize = 5 * 1024 * 1024;
		
		try 
		{
			MultipartRequest req = null;
			req = new MultipartRequest(request, root + savePath, maxFileSize, encType, new DefaultFileRenamePolicy());
			
			String url  = "http://13.124.193.209:8090/BiscuitBallImage/upload";
			String charset = "UTF-8";
			File[] imgFiles = {req.getFile("courtImg1"), req.getFile("courtImg2"), req.getFile("courtImg3")};
			String[] imgRefPaths = new String[3];
			String boundary = Long.toHexString(System.currentTimeMillis());
			String CRLF = "\r\n";
			
			URLConnection connection = null;
			
			for(int i=0; i<imgFiles.length; i++) 
			{
				connection = new URL(url).openConnection();
				connection.setDoOutput(true);
				connection.setRequestProperty("Content-Type", "multipart/form-data; boundary=" + boundary);
				
				try 
				{
					OutputStream output = connection.getOutputStream();
					PrintWriter writer = new PrintWriter(new OutputStreamWriter(output, charset), true);
					
					// Send binary file.
				    writer.append("--" + boundary).append(CRLF);
				    writer.append("Content-Disposition: form-data; name=\"image\"; filename=\"" + imgFiles[i].getName() + "\"").append(CRLF);
				    writer.append("Content-Type: " + URLConnection.guessContentTypeFromName(imgFiles[i].getName())).append(CRLF);
				    writer.append("Content-Transfer-Encoding: binary").append(CRLF);
				    writer.append(CRLF).flush();
				    Files.copy(imgFiles[i].toPath(), output);
				    output.flush(); // Important before continuing with writer!
				    writer.append(CRLF).flush(); // CRLF is important! It indicates end of boundary.

				    // End of multipart/form-data.
				    writer.append("--" + boundary + "--").append(CRLF).flush();
				} 
				catch (Exception re) 
				{
					System.out.println(re.toString());
					re.printStackTrace();
				}
				
				if (((HttpURLConnection)connection).getResponseCode() == 200)
				{
					BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream()));
					imgRefPaths[i] = br.readLine().trim();
				}

			}
			
			
			
			CourtDTO dto = new CourtDTO();
			
			dto.setCityCode(req.getParameter("cityCode"));
			dto.setMapPositionX(req.getParameter("mapPositionX"));
			dto.setMapPositionY(req.getParameter("mapPositionY"));
			dto.setMapPosition(req.getParameter("mapPositionX") + "," + req.getParameter("mapPositionY"));
			if(info != null)
				dto.setRegistrantAccountCode(info.getUserAcctCode());
			dto.setCourtCapacityCode(req.getParameter("courtCapacityCode"));
			dto.setCourtName(req.getParameter("courtName"));
			
			dto.setCourtImg1(imgRefPaths[0]);
			dto.setCourtImg2(imgRefPaths[1]);
			dto.setCourtImg3(imgRefPaths[2]);
			
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
	
	@RequestMapping("/{courtCode}/registerpoll")
	public String showPollRegisterForm(Model model, @PathVariable("courtCode") String courtCode)
	{
		String view = "/court/CourtVote";
		UserInfo info = (UserInfo)session.getAttribute("userInfo");
		
		model.addAttribute("court", courtModel.getCourtRegPollInfo(courtCode, info.getUserAcctCode()));
		
		return view;
	}
	
	@RequestMapping("/{courtCode}/registerpoll/up")
	public String pollRegisterYes(Model model, @PathVariable("courtCode") String courtCode)
	{
		String view = "/ajax/Check";
		UserInfo info = (UserInfo)session.getAttribute("userInfo");
		
		model.addAttribute("result", courtModel.pollCourtRegisterYes(courtCode, info.getUserAcctCode()));
		
		return view;
	}
	
	@RequestMapping("/{courtCode}/registerpoll/down")
	public String pollRegisterNo(Model model, @PathVariable("courtCode") String courtCode)
	{
		String view = "/ajax/Check";
		UserInfo info = (UserInfo)session.getAttribute("userInfo");
		
		model.addAttribute("result", courtModel.pollCourtRegisterNo(courtCode, info.getUserAcctCode()));
		
		return view;
	}
	
	@RequestMapping("/{courtCode}/deletepoll")
	public String showPollDeleteForm(Model model, @PathVariable("courtCode") String courtCode)
	{
		String view = "/court/CourtVote";
		UserInfo info = (UserInfo)session.getAttribute("userInfo");
		
		model.addAttribute("court", courtModel.getCourtDelPollInfo(courtCode, info.getUserAcctCode()));
		
		return view;
	}
	
	@RequestMapping("/{courtCode}/deletepoll/up")
	public String pollDeleteYes(Model model, @PathVariable("courtCode") String courtCode, @RequestParam("requestCode") String requestCode)
	{
		String view = "/ajax/Check";
		UserInfo info = (UserInfo)session.getAttribute("userInfo");
		
		model.addAttribute("result", courtModel.pollCourtDeleteYes(requestCode, info.getUserAcctCode()));
		
		return view;
	}
	
	@RequestMapping("/{courtCode}/deletepoll/down")
	public String pollDeleteNo(Model model, @PathVariable("courtCode") String courtCode, @RequestParam("requestCode") String requestCode)
	{
		String view = "/ajax/Check";
		UserInfo info = (UserInfo)session.getAttribute("userInfo");
		
		model.addAttribute("result", courtModel.pollCourtDeleteNo(requestCode, info.getUserAcctCode()));
		
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
	
	@RequestMapping("/{courtCode}/review/{reviewCode}/poll/up")
	public String likeCourtReview(Model model, @PathVariable("courtCode") String courtCode, @PathVariable("reviewCode") String reviewCode)
	{
		UserInfo info = (UserInfo)session.getAttribute("userInfo");
		model.addAttribute("result", courtModel.likeReview(reviewCode, info.getUserAcctCode()));
		return "/ajax/Check";
	}
	
	@RequestMapping("/{courtCode}/review/{reviewCode}/poll/down")
	public String dislikeCourtReview(Model model, @PathVariable("courtCode") String courtCode, @PathVariable("reviewCode") String reviewCode) 
	{
		UserInfo info = (UserInfo)session.getAttribute("userInfo");
		model.addAttribute("result", courtModel.dislikeReview(reviewCode, info.getUserAcctCode()));
		
		return "/ajax/Check";
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
	
	@RequestMapping("/{courtCode}/name/{courtNameCode}/poll")
	public String pollCourtName(Model model, @PathVariable("courtCode") String courtCode, @PathVariable("courtNameCode") String courtNameCode)
	{
		String view = "/ajax/Check";
		UserInfo info = (UserInfo)session.getAttribute("userInfo");
		
		model.addAttribute("result", courtModel.pollCourtName(courtNameCode, info.getUserAcctCode()));
		
		return view;
	}
	
	public String searchForm(Model model)
	{
		String view = "/search/SearchCourt";
		
		model.addAttribute("regions", courtModel.getRegionList());
		
		return view;
	}
	
}

