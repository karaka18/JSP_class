package com.itwillbs.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwillbs.db.MemberDAO;
import com.itwillbs.db.MemberDTO;
import com.itwillbs.util.Action;
import com.itwillbs.util.ActionForward;

public class MemberInfoAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println(" M : MemberInfoAction_execute() 호출! ");

		// 내정보(로그인한 사용자)를 화면에 출력
		
		// 로그인여부 체크(사용자의 아이디정보 확보)
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

		// DB에서 내정보를 가져오기 => DAO객체 생성
		MemberDAO dao = new MemberDAO();
		
		MemberDTO dto = dao.getMember(id);
		
		System.out.println(" M : "+dto);
		         
		// 정보(DTO)를 출력하기 위해 정보 전달
		// request,session 영역객체 사용가능
		// => request 영역사용 전달
		request.setAttribute("dto", dto);
		
		// 페이지 이동준비( ./member/myInfo.jsp )
		forward.setPath("./member/myInfo.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}


