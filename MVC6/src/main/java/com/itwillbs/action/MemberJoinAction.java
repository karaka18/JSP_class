package com.itwillbs.action;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwillbs.db.MemberDAO;
import com.itwillbs.db.MemberDTO;
import com.itwillbs.util.Action;
import com.itwillbs.util.ActionForward;

/**
 * 회원가입에 대한 동작을 처리
 *  1. 전달된 정보(폼태그)를 저장
 *  2. DB에 정보를 입력
 *  3. 로그인 페이지로 이동
 */
public class MemberJoinAction implements Action {
	
	// alt shift s + v
	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println(" M : MemberJoinAction_execute() 호출 ");
		
		// 한글처리 인코딩
		request.setCharacterEncoding("UTF-8");
		// 1. 전달된 정보 MemberDTO 저장
		MemberDTO dto = new MemberDTO();
		dto.setId(request.getParameter("id"));
		dto.setPass(request.getParameter("pass"));
		dto.setName(request.getParameter("name"));
		dto.setGender(request.getParameter("gender"));
		dto.setEmail(request.getParameter("email"));
		dto.setAge(Integer.parseInt(request.getParameter("age")));
		
		dto.setReg_date(new Timestamp(System.currentTimeMillis()));
		
		System.out.println(" M : "+dto);
		
		// 2. DB에 정보를 입력
		// MemberDAO 객체 생성
		MemberDAO dao = new MemberDAO();
		
		dao.insertMember(dto);
		
		System.out.println(" M : 회원가입 성공! ");
		
		// 3. 페이지 이동준비(실제 이동X, 실제 이동은 무조건 컨트롤러에서만!)
		ActionForward forward = new ActionForward();
		forward.setPath("./MemberLogin.me");
		forward.setRedirect(true);
		
		System.out.println(" M : " +forward);
		
		return forward;
	}

}
