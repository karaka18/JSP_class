package com.itwillbs.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 서블릿 클래스 만들기
 */
public class MyServlet extends HttpServlet {

	@Override
	public void init() throws ServletException {
		System.out.println(" 서블릿 초기화! ");
		System.out.println(" 서블릿 초기화는 처음 생성시에만 호출됨 ");
		
	}

	// alt shift s + v
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println(" get방식으로 페이지 호출시 실행되는 메서드 ");
		System.out.println(" doGet() 실행! ");

		response.setContentType("text/html; charset=UTF-8");

		response.getWriter().print(" 안녕하세요! ");
		response.getWriter().print("<h1> 안녕하세요! </h1>");

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println(" post방식으로 페이지 호출시 실행되는 메서드 ");
		System.out.println(" doPost() 실행! ");

	}

	@Override
	public void destroy() {
		System.out.println(" 서블릿 소멸! ");	
		
	}

}
