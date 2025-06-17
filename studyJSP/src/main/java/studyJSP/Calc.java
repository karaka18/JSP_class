package studyJSP;

/*
 * 계산기의 역할을 수행
*/
public class Calc {
	// method2()- 학생의 국영수 점수를 받아서 
	// 총점을 출력하는 메서드로 생성
	public static void method2(int kor,int eng,int math) {
		System.out.println(" 총점 : "+(kor+eng+math));
	}
	public static void method2(Student s) {
		System.out.println(" 총점 : "+(s.getKor()+s.getEng()+s.getMath()));
	}
}
