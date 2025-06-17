package com.itwillbs.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/*
 * TestServlet1 클래스
 * 서블릿 객체를 생성 - attributeTest.jsp와 연결
 * 
 * http://localhost:8088/studyJSP/test1
*/
public class TestServlet1 extends HttpServlet{
	
	// alt shift s + v
	@Override
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println(" get방식으로 페이지 호출시 실행되는 메서드");
		
		System.out.println(" attributeTest.jsp 페이지와 연결");
		
		/*
		 * response.setContentType("text/html; charset=UTF-8");
		 * response.getWriter().print(" 안녕하세요! ");
		 * response.getWriter().print("<h1> 안녕하세요! </h1>");
		 * 
		 * => 작업을 대신하기 위해서 jsp 페이지 연결
		*/
		
		// response 이름으로 3000값을 저장
		request.setAttribute("cnt", 3000);
		
		// 페이지 연결(페이지 이동 - forward)
		/* <jsp:forward> > (JSP페이지에 있는 기능) */
		RequestDispatcher dis
			= request.getRequestDispatcher("./jstl_el/attributeTest.jsp");
		
		dis.forward(request, response);
		// forward 이동방식의 특징
		// 1) 주소의 변경X, 화면은 변경O
		// 2) request(영역객체), response 정보를 전달 
		
		
	}//doGet

	@Override
	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	
	
}
