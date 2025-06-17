package com.itwillbs.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwillbs.util.Action;
import com.itwillbs.util.ActionForward;

public class MemberLogoutAction implements Action{

	// alt shift s + v
	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println(" M : MemberLogoutAction_execute()실행 ");

		// 로그아웃 처리
		// 세션정보 초기화
		HttpSession session = request.getSession();
		session.invalidate();
		System.out.println(" M : 로그아웃 성공!(세션정보 초기화!)");
		
		// 페이지 이동(메인페이지로) - JS
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<script>");
		out.print(" alert('사용자의 정보를 안전하게 로그아웃 하였습니다!'); ");
		out.print(" location.href='./Main.me'; ");
		out.print("</script>");
		out.close();
		
		return null;
	}

	
	
}
