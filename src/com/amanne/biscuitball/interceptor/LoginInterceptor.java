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
		String[] urls = request.getRequestURI().toString().split("/");
		
		if(urls.length == 2 
			|| urls[2].matches("signup") || urls[2].matches("signupdo") 
			|| urls[2].matches("login") || urls[2].matches("logindo")
		)
			return true;
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("adminInfo") == null && session.getAttribute("userInfo") == null)
		{
			response.sendRedirect("/BiscuitBall/login");
			return false;
		}
		
		return true;
	}
	
}