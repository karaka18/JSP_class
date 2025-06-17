package com.itwillbs.util;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

/**
 * Action페이지에서 자바스크립트로 이동하는 동작을 구현
 * 
 * 코드를 직접구현 X, 메서드 호출사용 O
 */
public class JsMoveFunction {

	// 뒤로가기 + 메세지
	public static void alertAndBack(HttpServletResponse response,
			                        String msg) {
		try {
		// 응답결과의 형태를 html파일로 설정
		response.setContentType("text/html; charset=UTF-8");
		// html파일에 출력가능한 도구생성
		PrintWriter out = response.getWriter();
		// out.print(" HTML코드 형태 ");
		out.print("<script>");
		out.print(" alert(' "+msg+" '); ");
		out.print(" history.back(); ");
		out.print("</script>");
		out.close(); // 자원해제
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
	// 페이지 이동 + 메세지	
	public static void alertAndMove(HttpServletResponse response,
			String msg,String url) {
		try {
			// 응답결과의 형태를 html파일로 설정
			response.setContentType("text/html; charset=UTF-8");
			// html파일에 출력가능한 도구생성
			PrintWriter out = response.getWriter();
			// out.print(" HTML코드 형태 ");
			out.print("<script>");
			out.print(" alert(' "+msg+" '); ");
			out.print(" location.href='"+url+"'; ");
			out.print("</script>");
			out.close(); // 자원해제
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
	

}
