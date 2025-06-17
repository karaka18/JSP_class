package com.itwillbs.db;

import java.sql.Timestamp;

/**
 * MemberDTO : 회원정보(itwill_member테이블)를 모두 저장하는 객체 
 * 
 * DTO(Data Transfer Object) : 데이터 전송 객체
 * => 자바빈의 형태로 생성
 * 
 */
public class MemberDTO {
	
	private String id;
	private String pass;
	private String name;
	private int age;
	private String gender;
	private String email;
	private Timestamp reg_date;
	
	// alt shift s + r 
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	
	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", pass=" + pass + ", name=" + name + ", age=" + age + ", gender=" + gender
				+ ", email=" + email + ", reg_date=" + reg_date + "]";
	}

}
