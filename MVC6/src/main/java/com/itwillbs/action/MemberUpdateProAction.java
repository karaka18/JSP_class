package com.itwillbs.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwillbs.db.MemberDAO;
import com.itwillbs.db.MemberDTO;
import com.itwillbs.util.Action;
import com.itwillbs.util.ActionForward;
import com.itwillbs.util.JsMoveFunction;

public class MemberUpdateProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : MemberUpdateProAction_execute() 호출");

		// 세션정보 제어
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");

		ActionForward forward = new ActionForward();
		if (id == null) {
			forward.setPath("./Main.me");
			forward.setRedirect(true);
			return forward;
		}

		// 한글처리 인코딩
		request.setCharacterEncoding("UTF-8");
		// 이전페이지에서 전달해준 수정할 정보들을 저장

		// DTO객체 생성
		MemberDTO dto = new MemberDTO();
		// dto.setId(id);
		dto.setId(request.getParameter("id"));
		dto.setPass(request.getParameter("pass"));
		dto.setName(request.getParameter("name"));
		dto.setAge(Integer.parseInt(request.getParameter("age")));
		dto.setGender(request.getParameter("gender"));
		dto.setEmail(request.getParameter("email"));

		System.out.println(" M : 수정할 데이터 :" + dto);

		// DB에 연결해서 해당 데이터는 수정
		MemberDAO dao = new MemberDAO();

		// 정보 수정하는 메서드 호출
		int result = dao.updateMember(dto);
		System.out.println(" M : 정보 수정완료 (" + result + ")");

		// 수정 결과에 따른 페이지 이동(-1,0,1)
		if (result == -1) {
			JsMoveFunction.alertAndBack(response, "수정 실패 - 회원정보 없음!");
			return null; // 컨트롤러 이동X
		}
		
		if(result == 0) {
			JsMoveFunction.alertAndBack(response, "수정 실패 - 비밀번호 오류!");
			return null;
		}
		
		// result == 1
		JsMoveFunction.alertAndMove(response, "수정 성공!", "./Main.me");		

		return null;
	}

}
