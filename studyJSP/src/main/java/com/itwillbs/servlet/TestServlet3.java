package com.itwillbs.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import studyJSP.Person;
import studyJSP.Phone;

//http://localhost:8088/studyJSP/test3

//@WebServlet("/test3")
// => web.xml파일에서 서블릿 매핑 동작과 동일함
//    서블릿 버젼이 3.1부터 사용가능

@WebServlet("/test3")
public class TestServlet3 extends HttpServlet {

	// alt shift s + v
	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("TestServlet3_doGet() 실행!");
		
		// "아이티윌"이라는 이름을 가지는 사람의 휴대폰정보(모델명,전화번호)를
		// Object.jsp 페이지에 출력해보기
		Phone iphone15 = new Phone();
		iphone15.setModel("iPhone15");
		iphone15.setTelNo("010-1234-1234");		
		
		Person p1 = new Person();
		p1.setName("아이티윌");
		p1.setP(iphone15);
		
		// request 영역에 정보 저장
		
		
		
		
		
		// Object.jsp 페이지로 이동(forward)
		RequestDispatcher dis =
//				request.getRequestDispatcher("./jstl_el/Object.jsp");
				request.getRequestDispatcher("./jstl_el/core_set2.jsp");
		
		dis.forward(request, response);
		
		
		
		
		
		
	}

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}
	

	
	
	

}
