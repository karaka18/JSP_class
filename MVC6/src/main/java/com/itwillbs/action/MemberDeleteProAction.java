package com.itwillbs.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwillbs.db.MemberDAO;
import com.itwillbs.db.MemberDTO;
import com.itwillbs.util.Action;
import com.itwillbs.util.ActionForward;
import com.itwillbs.util.JsMoveFunction;

public class MemberDeleteProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : MemberDeleteProAction_execute() 호출 ");
		
		// 세션제어
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		ActionForward forward = new ActionForward();
		if(id == null) {
			forward.setPath("./Main.me");
			forward.setRedirect(true);
			return forward;
		}
		// 전달된 정보(pass) 저장
		MemberDTO dto = new MemberDTO();
		dto.setId(id);
		dto.setPass(request.getParameter("pass"));
		
		// DB사용해서 정보 삭제
		MemberDAO dao = new MemberDAO();
		
		int result = dao.deleteMember(dto);
		
		// 결과에 따른 페이지 이동(JS)
		if(result == -1) {
			JsMoveFunction.alertAndBack(response, "삭제 실패! - 아이디 없음!");
			return null;
		}
		
		if(result == 0) {
			JsMoveFunction.alertAndBack(response, "삭제 실패! - 비밀번호 오류!");
			return null;
		}
		
		//result == 1
		// 회원의 세션정보 초기화(로그아웃)
		session.invalidate();
		
		JsMoveFunction.alertAndMove(response, "삭제 성공!", "./Main.me");		
		return null;
	}

}
