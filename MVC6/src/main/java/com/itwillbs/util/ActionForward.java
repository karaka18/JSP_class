package com.itwillbs.util;

/**
 * ActionForward:페이지 이동정보를 저장하는 객체(비행기티켓)
 * 
 *  이동할 주소 (목적지)
 *  이동할 방식 (직항/환승)
 *    - sendRedirect() 방식
 * 	  - forward() 방식
 *  * 
 */
public class ActionForward {
	
	// 이동할 페이지주소
	private String path;
	// 이동할 방법
	private boolean isRedirect;
	//  true - sendRedirect() 방식이동
	//  false - forward() 방식이동
	
	
	public ActionForward() {
		System.out.println("  페이지 이동정보(티켓) 객체 생성");
	}

	// alt shift s + r
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public boolean isRedirect() {
		return isRedirect;
	}
	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}

	// alt shift s + s
	@Override
	public String toString() {
		return "  ActionForward(티켓) [path(목적지)=" + path 
				+ ", isRedirect(직항/환승)=" + isRedirect + "]";
	}
	

}
