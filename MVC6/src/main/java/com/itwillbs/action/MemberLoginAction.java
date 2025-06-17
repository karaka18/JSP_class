package com.itwillbs.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwillbs.db.MemberDAO;
import com.itwillbs.db.MemberDTO;
import com.itwillbs.util.Action;
import com.itwillbs.util.ActionForward;

public class MemberLoginAction implements Action {

	// alt shift s + v
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : MemberLoginAction_execute() 실행");

		// 한글처리 인코딩
		request.setCharacterEncoding("UTF-8");

		// 전달된 정보(id,pass)를 저장(DTO)
		MemberDTO dto = new MemberDTO();
		dto.setId(request.getParameter("id"));
		dto.setPass(request.getParameter("pass"));

		System.out.println(" M : " + dto);

		// DB에 연결해서 로그인여부 판단=>DAO 객체
		MemberDAO dao = new MemberDAO();
		// 로그인 여부에 리턴정보가 필요한가?
		int result = dao.loginMember(dto);

		System.out.println(" M : 로그인 결과 :" + result);

		// 페이지 이동준비
		if (result == -1) { // js로 이동
			// 응답결과의 형태를 html파일로 설정
			response.setContentType("text/html; charset=UTF-8");
			// html파일에 출력가능한 도구생성
			PrintWriter out = response.getWriter();

			// out.print(" HTML코드 형태 ");
			out.print("<script>");
			out.print(" alert('로그인 실패-회원정보 없음 '); ");
			out.print(" history.back(); ");
			out.print("</script>");
			out.close(); // 자원해제
			return null;
		}
		if (result == 0) { // js로 이동
			// 응답결과의 형태를 html파일로 설정
			response.setContentType("text/html; charset=UTF-8");
			// html파일에 출력가능한 도구생성
			PrintWriter out = response.getWriter();

			// out.print(" HTML코드 형태 ");
			out.print("<script>");
			out.print(" alert('로그인 실패-비밀번호 오류 '); ");
			out.print(" history.back(); ");
			out.print("</script>");
			out.close(); // 자원해제
			return null;
		}
		
		// result == 1 // 컨트롤러로 이동
		// 로그인 성공 (메인페이지로 이동)
		
		// 세션 영역객체에 아이디 정보를 저장 
		HttpSession session = request.getSession();
		session.setAttribute("id", dto.getId());
		
		// ActionForward 객체 생성
		ActionForward forward = new ActionForward();
		forward.setPath("./Main.me");
		forward.setRedirect(true);		

		return forward;
	}

}
