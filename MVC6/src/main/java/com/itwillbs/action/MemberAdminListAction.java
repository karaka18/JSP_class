package com.itwillbs.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwillbs.db.MemberDAO;
import com.itwillbs.db.MemberDTO;
import com.itwillbs.util.Action;
import com.itwillbs.util.ActionForward;

public class MemberAdminListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println(" M : MemberAdminListAction_execute() 호출");
		
		// 세션제어 + 관리자여부 체크
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");

		ActionForward forward = new ActionForward();
		if (id == null || !id.equals("admin")) {
			forward.setPath("./Main.me");
			forward.setRedirect(true);
			return forward;
		}
		
		// DB로 이동해서 가입되어있는 모든 회원정보를 가져오기
		MemberDAO dao = new MemberDAO();
		
		List<MemberDTO> memberList =  dao.getMemberList();
		System.out.println(" M : " + memberList.size());
		
		// 연결된 뷰페이지로 전달(request 영역)
		request.setAttribute("memberList", memberList);
		
		// 페이지 이동준비(" ./member/list.jsp")
		forward.setPath("./member/list.jsp");
		forward.setRedirect(false);
		return forward;
	}

}
