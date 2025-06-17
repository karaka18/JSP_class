package com.itwillbs.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwillbs.util.Action;
import com.itwillbs.util.ActionForward;

/**
 * MemberFrontController 
 * Model - View를 연결하는 서블릿
 * 
 * http://localhost:8088/MVC6/member (x)
 * http://localhost:8088/MVC6/member.me (o)
 * http://localhost:8088/MVC6/*.me (o)
 * 
 */
public class MemberFrontController extends HttpServlet{

	protected void doProcess(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println(" C : MemberFrontController_doProcess() 실행! ");
		System.out.println(" C : GET/POST 방식 모두를 한번에 처리! \n\n");
		
		System.out.println(" C : *****************1. 가상주소 계산 시작************ ");
		//가상주소 가져오기
		String requestURI = request.getRequestURI();
		System.out.println(" C : requestURI : "+requestURI);
		//프로젝트명 가져오기
		String CTXPath = request.getContextPath();
		System.out.println(" C : CTXPath : "+CTXPath);
		// 가상주소(URI) - 프로젝트명  계산
		String command = requestURI.substring(CTXPath.length());
		System.out.println(" C : command : "+command);
		
		System.out.println(" C : *****************1. 가상주소 계산 끝************** ");

		System.out.println(" C : *****************2. 가상주소 매핑 시작************ ");
		
		Action action = null;
		ActionForward forward = null;
		
		if(command.equals("/MemberJoin.me")) {
			// 회원가입 동작(사용자 정보 입력)
			// ctrl + 클릭
			//http://localhost:8088/MVC6/MemberJoin.me
			System.out.println(" C : /MemberJoin.me 매핑! ");
			System.out.println(" C : 패턴 1 - DB처리X(작업X), 페이지 이동");
			
			// ActionForward 객체 생성
			forward = new ActionForward();
			forward.setPath("./member/insertForm.jsp");
			forward.setRedirect(false);
			System.out.println(forward.toString());
		}
		else if(command.equals("/MemberJoinAction.me")) {
			System.out.println(" C : /MemberJoinAction.me 매핑!");
			System.out.println(" C : 패턴 2 - DB처리o(작업o), 페이지 이동 ");
			
			// MemberJoinAction() 객체를 생성
			//MemberJoinAction mja = new MemberJoinAction();
			action = new MemberJoinAction();
			try {
				//mja.execute(request, response);
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		else if(command.equals("/MemberLogin.me")) {
			System.out.println(" C : /MemberLogin.me 매핑! ");
			System.out.println(" C : 패턴 1 - DB처리X,페이지 이동O ");
			
			forward = new ActionForward();
			forward.setPath("./member/loginForm.jsp");
			forward.setRedirect(false);
		}
		else if(command.equals("/MemberLoginAction.me")) {
			System.out.println(" C : /MemberLoginAction.me 매핑! ");
			System.out.println(" C : 패턴 2 - DB사용O, 페이지 이동O");
			
			// MemberLoginAction 객체 생성
			action = new MemberLoginAction();
			// execute()메서드 호출	
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("/Main.me")) {
			System.out.println(" C : /Main.me 매핑! ");
			System.out.println(" C : 패턴 1 - DB 처리X, 페이지이동O ");
			
			forward = new ActionForward();
			forward.setPath("./member/main.jsp");
			forward.setRedirect(false);			
		}
		else if(command.equals("/MemberLogout.me")) {
			System.out.println(" C : /MemberLogout.me 매핑! ");
			System.out.println(" C : 패턴 2 - DBX,데이터처리O, 페이지이동O");
			
			// MemberLogoutAction() 객체
			action = new MemberLogoutAction();
			// execute() 메서드 호출
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("/MemberInfo.me")) {
			System.out.println(" C : /MemberInfo.me 매핑! ");
			System.out.println(" C : 패턴 3 - DB사용 O, 페이지 (이동&)출력 ");
			
			// MemberInfoAction() 객체 생성
			action = new MemberInfoAction();
			// action.execute() 메서드 호출			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		else if(command.equals("/MemberUpdate.me")) {
			System.out.println(" C : /MemberUpdate.me 매핑! ");
			System.out.println(" C : 패턴 3 - DB사용O, 페이지 출력 ");
			// MemberUpdateAction() 객체 생성
			action = new MemberUpdateAction();
			// action.execute() 메서드 호출		
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		else if(command.equals("/MemberUpdatePro.me")) {
			System.out.println(" C : /MemberUpdatePro.me 매핑! ");
			System.out.println(" 패턴2 - DB사용 O, 페이지 이동");

			// MemberUpdateProAction 객체
			action = new MemberUpdateProAction();
			
			// action.execute() 호출
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		else if(command.equals("/MemberDelete.me")) {
			System.out.println(" C : /MemberDelete.me 매핑! ");
			System.out.println(" C : 패턴 1 - DB사용X,페이지 이동");
			
			forward = new ActionForward();
			forward.setPath("./member/deleteForm.jsp");
			forward.setRedirect(false);
		}
		
		else if(command.equals("/MemberDeletePro.me")) {
			System.out.println(" C : /MemberDeletePro.me 매핑! ");
			System.out.println(" C : 패턴 2 - DB처리O, 페이지 이동");
			
			// MemberDeleteProAction() 객체
			action = new MemberDeleteProAction();
			// action.execute()메서드 호출		
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
			
		else if(command.equals("/MemberAdminList.me")) {
			System.out.println(" C : /MemberAdminList.me 매핑 ");
			System.out.println(" C : 패턴 3 - DB처리O,페이지 출력");
			
			// MemberAdminListAction() 객체생성
			action = new MemberAdminListAction();
			// action.execute() 메서드 호출
			try {
				forward=action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		
		
		System.out.println(" C : *****************2. 가상주소 매핑 끝************** ");

		System.out.println(" C : *****************3. 가상주소 이동 시작************ ");
		if(forward != null) { // 페이지 이동정보가 있을때만 실행
			System.out.println(" C : 페이지 이동! 주소: "+forward.getPath()
			                         +", 방식 :"+forward.isRedirect());
			if(forward.isRedirect()) { // true(직항)				
				response.sendRedirect(forward.getPath());
			}else { //false(환승)
				RequestDispatcher dis = 
						request.getRequestDispatcher(forward.getPath());
				dis.forward(request, response);
			}		
		}			
		System.out.println(" C : *****************3. 가상주소 이동 끝************** ");
		
		
	}// doProcess() 끝
	
	
	// alt shift s + v
	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println(" C : MemberFrontController_doGet() 실행! ");
		doProcess(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println(" C : MemberFrontController_doPost() 실행! ");
		doProcess(request, response);	
	
	}
	
	
	
	

}
