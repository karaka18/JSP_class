package com.itwillbs.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwillbs.db.MemberDAO;
import com.itwillbs.db.MemberDTO;
import com.itwillbs.util.Action;
import com.itwillbs.util.ActionForward;

public class MemberUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : MemberUpdateAction_execute() 호출 ");
		
		// 세션정보 확인
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		ActionForward forward = new ActionForward();
		if(id == null) {
			System.out.println(" M : 로그인 정보 없음! ");
			//response.sendRedirect(id);
			forward.setPath("./Main.me");
			forward.setRedirect(true);
			return forward;
		}
		
		// DAO객체를 사용해서 특정 회원정보를 조회
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = dao.getMember(id);
		//dto.setId("수정ID");
		// 정보를 전달하기(request 영역)
		request.setAttribute("dto", dto);
		
		//request.setAttribute("dto", dao.getMember(id));
		
		// 페이지 이동준비
		forward.setPath("./member/updateForm.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
