/*==============================
 	MyUtil.java
 	- 게시판 페이징 처리
==============================*/

package com.amanne.biscuitball.util;

import org.springframework.stereotype.Component;

@Component
public class MyUtil
{
	// ■ 전체 페이지 수를 구하는 메소드
	// numPerPage : 한 페이지에 표시할 데이터(게시물)의 수
	// dataCount : 전체 데이터(게시물) 수
	public int getPageCount(int numPerPage, int dataCount)
	{
		int pageCount=0;
		
		pageCount = dataCount/numPerPage;
		
		if(dataCount % numPerPage!=0)
			pageCount++;
		
		return pageCount;
	}
	
	// ■ 페이징 처리 기능의 메소드
	// currentPage : 현재 표시할 페이지
	// totalPage : 전체 페이지 수
	// listUrl : 링크를 설정할 URL
	public String getIndexList(int currentPage, int totalPage, String listUrl)
	{
		StringBuffer strList = new StringBuffer();
		
		int numPerBlock = 10;
		int currentPageSetup;
		int page;
		int n;
		
		if(currentPage ==0)
			 return "";
		
		if(listUrl.indexOf("?") !=-1)
			listUrl=listUrl+"&";
		else
			listUrl=listUrl+"?";

		currentPageSetup = (currentPage / numPerBlock) * numPerBlock;
		
		if(currentPage % numPerBlock==0)
			currentPageSetup = currentPageSetup-numPerBlock;
		
		if( (totalPage> numPerBlock) && (currentPageSetup > 0) )
			strList.append(" <a href='"+ listUrl +"pageNum=1'>1</a>");
		
		n = currentPage - numPerBlock;
		if( (totalPage > numPerBlock)&&(currentPageSetup > 0) )
			strList.append(" <a href='"+ listUrl +"pageNum=" + n + "'>Prev</a>");
		
		page = currentPageSetup + 1;
		
		while( (page <= totalPage) && (page <= currentPageSetup + numPerBlock) )
		{
			if(page==currentPage)
				strList.append(" <span style='color:orange; font-weight:bold;'>"+ page +"</span>");
			else
				strList.append(" <a href='"+ listUrl +"pageNum=" + page + "'>"+page+"</a>");
			
			page++;
		}
		
		n=currentPage+numPerBlock;

		if( (totalPage-currentPageSetup) > numPerBlock )
			strList.append(" <a href='"+ listUrl +"pageNum=" + n + "'>Next</a>");
		
		if( (totalPage>numPerBlock)&&(currentPageSetup + numPerBlock)<totalPage )
			strList.append(" <a href='"+ listUrl +"pageNum=" + totalPage + "'>"+totalPage+"</a>");
			
		return strList.toString();
	}

	
	
	// ■ 페이징 처리 기능의 메소드
	// currentPage : 현재 표시할 페이지
	// totalPage : 전체 페이지 수
	// listUrl : 링크를 설정할 URL
	public String getBootstrapIndexList(int currentPage, int totalPage, String listUrl)
	{
		StringBuffer strList = new StringBuffer();
		
		int numPerBlock = 5;
		int currentPageSetup;
		int page;
		int n;
		
		if(currentPage ==0)
			return "";
		
		if(listUrl.indexOf("?") !=-1)
			listUrl=listUrl+"&";
		else
			listUrl=listUrl+"?";
		
		strList.append("<ul class=\"pagination\">");
		
		currentPageSetup = (currentPage / numPerBlock) * numPerBlock;
		
		if(currentPage % numPerBlock==0)
			currentPageSetup = currentPageSetup-numPerBlock;
		
		n = currentPage - numPerBlock;
		// 추가
		if( (totalPage> numPerBlock) && (currentPageSetup > 0) )
			strList.append("<li><a href=\"" + listUrl + "pageNum=" + n +"\"><span>«</span></a></li>");
		else
			strList.append("<li class=\"disabled\"><a><span>«</span></a></li>");
		
		page = currentPageSetup + 1;
		
		while( (page <= totalPage) && (page <= currentPageSetup + numPerBlock) )
		{
			if(page==currentPage)
				strList.append("<li class=\"active\"><a>"+ page +"</a></li>");
			else
				strList.append("<li><a href=\""+ listUrl +"pageNum=" + page + "\">"+page+"</a></li>");
			
			page++;
		}
		
		n=currentPage+numPerBlock;
		
		if(totalPage == currentPage)
			strList.append("<li class=\"disabled\"><a><span>»</span></a></li>");
		else if( (totalPage>numPerBlock)&&(currentPageSetup + numPerBlock)<totalPage )
			strList.append("<li><a href=\""+ listUrl +"pageNum=" + totalPage + "\"> <span>»</span></a></li>");
		else if( (totalPage-currentPageSetup) > numPerBlock )
			strList.append("<li><a href=\""+ listUrl +"pageNum=" + n + "\"> <span>»</span></a></li>");

		strList.append("</ul>");
		
		return strList.toString();
	}
	
	// ■ 페이징 처리 기능의 메소드
	// currentPage : 현재 표시할 페이지
	// totalPage : 전체 페이지 수
	// listUrl : 링크를 설정할 URL
	public String getAjaxIndexList(int currentPage, int totalPage)
	{
		StringBuffer strList = new StringBuffer();
		
		int numPerBlock = 5;
		int currentPageSetup;
		int page;
		int n;
		
		if(currentPage ==0)
			return "";
		
		strList.append("<ul class=\"pagination\">");
		
		currentPageSetup = (currentPage / numPerBlock) * numPerBlock;
		
		if(currentPage % numPerBlock==0)
			currentPageSetup = currentPageSetup-numPerBlock;
		
		n = currentPage - numPerBlock;
		// 추가
		if( (totalPage> numPerBlock) && (currentPageSetup > 0) )
			strList.append("<li data-page=\"" + n + "\"><a><span>«</span></a></li>");
		else
			strList.append("<li class=\"disabled\"><a><span>«</span></a></li>");
		
		page = currentPageSetup + 1;
		
		while( (page <= totalPage) && (page <= currentPageSetup + numPerBlock) )
		{
			if(page==currentPage)
				strList.append("<li class=\"active\"><a>"+ page +"</a></li>");
			else
				strList.append("<li data-page=\""+ page + "\"><a>"+page+"</a></li>");
			
			page++;
		}
		
		n=currentPage+numPerBlock;
		
		if( (totalPage>numPerBlock)&&(currentPageSetup + numPerBlock)<totalPage )
			strList.append("<li data-page=\""+ n + "\"><a><span>»</span></a></li>");
		else
			strList.append("<li class=\"disabled\"><a><span>»</span></a></li>");
			
		
		strList.append("</ul>");
		
		return strList.toString();
	}
}

