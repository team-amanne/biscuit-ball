package com.amanne.biscuitball.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter
{
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception
	{
		// TODO Auto-generated method stub
		super.afterCompletion(request, response, handler, ex);
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception
	{
		// TODO Auto-generated method stub
		super.postHandle(request, response, handler, modelAndView);
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception
	{
		String uri = request.getRequestURI();
		String cp = request.getContextPath();
		
		// 로그인 없이 접근 가능한 페이지는 여기에 추가
		String[] excludes = {"/", "/signup", "/signupdo", "/login", "/logindo", "/signupcomplete", "/passwordreset"};
		
		if(uri.equals(cp))
			return true;
		
		for(String ex : excludes)
		{
			if(uri.equals(cp + ex))
				return true;
		}
		
		HttpSession session = request.getSession();
		
		// 개발 시에는 주석처리 상태에서 작업 → 로그인 없이 확인 가능
		/*
		if(session.getAttribute("adminInfo") == null && session.getAttribute("userInfo") == null)
		{
			response.sendRedirect(cp + "/login");
			return false;
		}
		*/
		
		return true;
	}
	
}
