package com.itwillbs.db;
/**
 *  MemberDAO : DB관련된 모든 동작을 처리하는 객체 
 *  DAO(Data Access Object): 데이터 처리 객체
 *    
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MemberDAO {
	
	// 공통변수(전역변수) 선언
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private String sql = "";
	
	// 공통메서드(디비연결) 선언
	private Connection getConnet() throws Exception{
		// - 디비연결정보
		final String DRIVER = "com.mysql.cj.jdbc.Driver";
		final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
		final String DBID = "root";
		final String DBPW = "1234";
		// 1. 드라이버 로드
		Class.forName(DRIVER);
		System.out.println(" DAO : 드라이버로드 성공! ");
		// 2. 디비 연결
		conn = DriverManager.getConnection(DBURL, DBID, DBPW);
		
		System.out.println(" DAO : 디비연결 성공! ");
		System.out.println("DAO : "+conn);
		
		return conn;
	}
	
	
	
	// 회원가입 메서드-insertMember(dto)
	public void insertMember(MemberDTO dto) {
		try {
			System.out.println(" DAO : insertMember(dto) 호출 ");
			// - 디비연결정보
			final String DRIVER = "com.mysql.cj.jdbc.Driver";
			final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
			final String DBID = "root";
			final String DBPW = "1234";
			// 1. 드라이버 로드
			Class.forName(DRIVER);
			System.out.println(" DAO : 드라이버로드 성공! ");
			// 2. 디비 연결
			conn = DriverManager.getConnection(DBURL, DBID, DBPW);
			// 3. SQL 구문 & pstmt 객체
			sql = "insert into itwill_member(id,pass,name,age,gender,email,reg_date)"
					+ " values(?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			
			// ???
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPass());
			pstmt.setString(3, dto.getName());
			pstmt.setInt(4, dto.getAge());
			pstmt.setString(5, dto.getGender());
			pstmt.setString(6, dto.getEmail());
			pstmt.setTimestamp(7, dto.getReg_date());
			
			// 4. SQL 구문 실행
			int result = pstmt.executeUpdate();
			
			if(result > 0) {
				System.out.println(" DAO : 회원가입 성공! ");
			}			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}	
	// 회원가입 메서드-insertMember(dto)
	
	
	// 로그인 메서드 - loginMember(dto)
	public int loginMember(MemberDTO dto){
		int result = -1;
		// 1(로그인성공), 0(로그인실패-비밀번호오류), -1(로그인실패-아이디x,에러)
		try {
			// 1. 드라이버 로드
			// 2. 디비 연결
			conn = getConnet();
			// 3. SQL 작성 & pstmt 객체
			sql = "select pass from itwill_member where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			// 4. SQL 실행
			rs = pstmt.executeQuery();
			// 5. 데이터처러(로그인 여부 판단)
			if(rs.next()) {
				// 아이디 있음
				if(dto.getPass().equals(rs.getString("pass"))) {
					//로그인 성공! 
					result = 1;
				}else {
					// 로그인 실패 - 비밀번호 오류
					result = 0;
				}				
			}else {
				// 아이디 없음
				result = -1;
			}

			System.out.println(" DAO : 로그인 체크완료("+result+")");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	// 로그인 메서드 - loginMember(dto)
	
	// 회원 정보 조회 메서드 - getMember(id)
	public MemberDTO getMember(String id) {
		
		MemberDTO dto = null;		
		// MemberDTO dto = new MemberDTO(); (x, 필요할때 객체 생성)		
		try {
			// 1.2.  디비연결
			conn = getConnet();
			// 3. SQL구문(select) & pstmt 객체
			sql = "select * from itwill_member where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			// 4. SQL 실행 - rs 저장
			rs = pstmt.executeQuery();
			// 5. 데이터처리 (정보저장)
			if(rs.next()) { //데이터 있을때
				// rs -> DTO 사용
				dto = new MemberDTO();
				
				dto.setId(rs.getString("id"));
				dto.setPass(rs.getString("pass"));
				dto.setName(rs.getString("name"));
				dto.setGender(rs.getString("gender"));
				dto.setEmail(rs.getString("email"));
				dto.setAge(rs.getInt("age"));
				dto.setReg_date(rs.getTimestamp("reg_date"));
			}//if 끝
			
			System.out.println(" DAO : 회원정보 저장완료! ");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	// 회원 정보 조회 메서드 - getMember(id)
	
	// 회원 정보 수정 메서드 - updateMember(dto)
	public int updateMember(MemberDTO dto) {
		int result = -1;
		
		try {
			//1.2. 디비 연결 
			conn = getConnet();
			//3. SQL 구문 & pstmt 객체
			sql = "select pass from itwill_member where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			//4. SQL 실행 & rs 저장
			rs = pstmt.executeQuery();
			//5. 데이터 처리
			if(rs.next()) {
				// 회원정보가 있음, 정상처리중
				if(dto.getPass().equals(rs.getString("pass"))) {
					// 비밀번호 맞음, 정보 수정
					// 3. SQL 작성(update) & pstmt 객체
					sql = "update itwill_member set name=?,age=?,gender=? where id=?";
					pstmt = conn.prepareStatement(sql);
					
					pstmt.setString(1, dto.getName());
					pstmt.setInt(2, dto.getAge());
					pstmt.setString(3, dto.getGender());
					pstmt.setString(4, dto.getId());
					
					// 4. SQL 실행
					result = pstmt.executeUpdate();					
					
					//result = 1;
				}else {
					// 비밀번호 오류
					result = 0;
				}				
			}else {
				// 회원정보가 없음, 에러발생
				result = -1;
			}
			
			System.out.println(" DAO : 회원정보 수정완료("+result+")");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	// 회원 정보 수정 메서드 - updateMember(dto)
	
	// 회원 정보 삭제 메서드 - deleteMember(dto)
	public int deleteMember(MemberDTO dto) {
		int result = -1;
		
		try {
			//1.2. 디비 연결 
			conn = getConnet();
			//3. SQL 구문 & pstmt 객체
			sql = "select pass from itwill_member where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			//4. SQL 실행 & rs 저장
			rs = pstmt.executeQuery();
			//5. 데이터 처리
			if(rs.next()) {
				// 회원정보가 있음, 정상처리중
				if(dto.getPass().equals(rs.getString("pass"))) {
					// 비밀번호 맞음, 정보 삭제
					// 3. SQL 작성(delete) & pstmt 객체
					sql = "delete from itwill_member where id=?";
					pstmt = conn.prepareStatement(sql);
					
					pstmt.setString(1, dto.getId());
					
					// 4. SQL 실행
					result = pstmt.executeUpdate();					
					
					//result = 1;
				}else {
					// 비밀번호 오류
					result = 0;
				}				
			}else {
				// 회원정보가 없음, 에러발생
				result = -1;
			}
			
			System.out.println(" DAO : 회원정보 삭제완료("+result+")");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	// 회원 정보 삭제 메서드 - deleteMember(dto) 

	// 회원목록 조회(관리자) - getMemberList()
	public List<MemberDTO> getMemberList(){
		List<MemberDTO> memberList = new ArrayList<MemberDTO>();
		try {
			//1.2. 디비 연결
			conn = getConnet();
			//3. SQL 구문 & pstmt 객체
			sql = "select * from itwill_member";
			pstmt = conn.prepareStatement(sql);
			//4. SQL 실행
			rs = pstmt.executeQuery();
			//5. 데이터처리
			while(rs.next()) {
				//  rs -> DTO -> List
				
				// rs => DTO
				MemberDTO dto = new MemberDTO();
				dto.setId(rs.getString("id"));
				dto.setPass(rs.getString("pass"));
				dto.setName(rs.getString("name"));
				dto.setAge(rs.getInt("age"));
				dto.setGender(rs.getString("gender"));
				dto.setEmail(rs.getString("email"));
				dto.setReg_date(rs.getTimestamp("reg_date"));
				
				// DTO => List 
				memberList.add(dto);				
			}// while
			
			System.out.println(" DAO : 회원목록 조회성공!");
			System.out.println(" DAO : "+memberList.size()); //배열의 길이
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return memberList;
	}
	// 회원목록 조회(관리자) - getMemberList()
	
	

} // DAO 클래스