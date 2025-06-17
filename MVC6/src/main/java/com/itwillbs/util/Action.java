package com.itwillbs.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *  추상메서드 : 메서드 body {}가 없는 메서드
 *  추상클래스 : 추상메서드를 포함하는 클래스(혼자서 객체 생성이 불가능)
 * 
 *  Action 인터페이스: 추상메서드 구현 (혼자서 객체 생성이 불가능)
 *  => 서브클래스를 사용해서(상속구현) 메서드 구현가능 
 *     추상메서드를 오버라이딩해서 반드시 구현해야함(강제성)
 */

/**
 * execute() 메서드 실행시 request,response 정보가 필요함
 * 실행의 결과로 ActionForward(티켓)객체가 리턴됨 
 *        
 * @param request
 * @param response
 * @return ActionForward
 * @throws Exception
 */
public interface Action {
	
	public /*abstract*/ ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception;	

}








