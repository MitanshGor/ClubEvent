package com.Filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;

import com.Bean.UserBean;

@Component
public class AuthCheckFilter implements Filter {

	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("Filter started");
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

//		 ADMIN
		System.out.println(((HttpServletRequest) request).getRequestURI().toLowerCase() + "   url");
		System.out.println(((HttpServletRequest) request).getRequestURI().toLowerCase().contains("admin") + " boolean");
		if (((HttpServletRequest) request).getRequestURI().toLowerCase().contains("admin")) {
			System.out.println("url admin");
			HttpSession session = ((HttpServletRequest) request).getSession();
			try {

				System.out.println("SEssion is  :" + session.getId());
				boolean flag = false;
				String person = "";
				
				if (session.getAttribute("user") == null) {
					request.setAttribute("msg", "You are not authorised to access this link !");
					request.getRequestDispatcher("LoginPage").forward(request, response);

				}else if( (session.getAttribute("isLogin") != null) )

				{
					flag = true;
				}
				else if (session.getAttribute("userType") != null) {
					person = (String) session.getAttribute("userType");
				}
				else if (flag && person.equals("admin")) {
					chain.doFilter(request, response);
				} else {
//					session.invalidate();
					request.setAttribute("msg", "You are not authorised to access this link !");
					request.getRequestDispatcher("LoginPage").forward(request, response);
				}
				
			} catch (Exception e) {
				e.printStackTrace();
//				session.invalidate();
				request.setAttribute("msg", "Please Login!!");
				request.getRequestDispatcher("LoginPage").forward(request, response);
			}
		}

//		 CLUB

		else if (((HttpServletRequest) request).getRequestURI().toLowerCase().contains("club")) {
			System.out.println("url club");
			HttpSession session = ((HttpServletRequest) request).getSession();
			try {

				System.out.println("SEssion is  :" + session.getId());
				boolean flag = false;
				String person = "";
				
				if (session.getAttribute("user") == null) {
					request.setAttribute("msg", "You are not authorised to access this link !");
					request.getRequestDispatcher("LoginPage").forward(request, response);

				}else if( (session.getAttribute("isLogin") != null) )

				{
					flag = true;
				}
				else if (session.getAttribute("userType") != null) {
					person = (String) session.getAttribute("userType");
				}
				else if (flag && person.equals("club")) {
					chain.doFilter(request, response);
				} else {
//					session.invalidate();
					request.setAttribute("msg", "You are not authorised to access this link !");
					request.getRequestDispatcher("LoginPage").forward(request, response);
				}
				
			} catch (Exception e) {
				e.printStackTrace();
//				session.invalidate();
				request.setAttribute("msg", "Please Login!!");
				request.getRequestDispatcher("LoginPage").forward(request, response);
			}
		}

		
		
		
////		USER
//		if  (((HttpServletRequest)request).getRequestURI().toLowerCase().contains("user") ) 
//		{
//			HttpSession session =((HttpServletRequest)request).getSession();
//			try {
//				boolean flag = (Boolean)session.getAttribute("isLogin");
//				String person = (String)session.getAttribute("userType");
//				if(flag && person.equals("user")) {
//					chain.doFilter(request, response);
//				}
//				else {
//					session.invalidate();
//					request.setAttribute("msg", "You are not authorised to access this link !");
//					request.getRequestDispatcher("loginDisplay").forward(request, response);
//				}
//			}
//			catch(Exception e){
//				e.printStackTrace();
//				request.setAttribute("msg", "Please Login!!");
//				request.getRequestDispatcher("loginDisplay").forward(request, response);
//			}
//		}
		try {
			chain.doFilter(request, response);
		} catch (Exception e) {

		}
	}

	public void destroy() {
		System.out.println("Filter destroyed");
	}

}