package studyJSP;

/*
 * 학생의 점수를 저장하는 객체
*/
public class Student {
	private int kor;
	private int eng;
	private int math;
	
	
	// set/get 생성
	// alt shift s + r
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
	}
	
}
