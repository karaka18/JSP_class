package com.itwillbs.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class TestServlet2 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("TestServlet2-doGet() 실행!");
		// http://localhost:8088/studyJSP/test2
		
		// (고정길이)배열
		String[] menu = {"짜장면", "짬뽕", "햄버거", "피자", "삼겹살", "치킨"};
		
		// request 영역객체에 배열의 정보를 저장
		request.setAttribute("menu",menu);
		
		// (가변길이)배열(리스트)
		// ArrayList == ArrayList<Object>
		// ArrayList<String>
		ArrayList<String> sports = new ArrayList<String>();
		sports.add("축구");
		sports.add("야구");
		sports.add("농구");
		sports.add("배구");
		sports.add("탁구");
		
		// sports(배열)을 session 영역에 저장해서 정보를 전달
		HttpSession session = request.getSession();
		session.setAttribute("sports", sports);
		
		
		// jsp페이지 연결(이동)
		RequestDispatcher dis
			= request.getRequestDispatcher("/jstl_el/array.jsp");
		dis.forward(request, response);
		
	}//doGet

	@Override
	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
	}//doPost
	
}
