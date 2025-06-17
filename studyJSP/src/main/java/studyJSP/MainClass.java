package studyJSP;

public class MainClass {
	
	public static void method1(int k, int e, int m) {
		System.out.println("kor : "+k);
		System.out.println("eng : "+e);
		System.out.println("math : "+m);
	}

	public static void method1(Student s) {
		System.out.println("kor : "+s.getKor());
		System.out.println("eng : "+s.getEng());
		System.out.println("math : "+s.getMath());
	}
	
	// method2() - 학생의 국영수 점수를 받아서
	// 총점을 출력하는 메서드로 생성
	
	
	
	public static void main(String[] args) {
		// 1) 변수
		int kor = 80;
		int eng = 77;
		int math = 99;
		
		System.out.println("kor : "+kor);
		System.out.println("eng : "+eng);
		System.out.println("math : "+math);
		System.out.println("----------------------------");
		// 2) 메서드
		method1(kor, eng, math);
		System.out.println("----------------------------");
		// 3) 클래스
		Student s = new Student();
		// s.kor = 100;
		s.setKor(80);
		s.setEng(77);
		s.setMath(99);
		System.out.println("----------------------------");
		method1(s.getKor(), s.getEng(), s.getMath());
		method1(s);
		System.out.println("----------------------------");
		// method2(s);
		// method2(kor, eng, math);
		Calc.method2(s);
		
		Calc c = new Calc();
		c.method2(s);
		
		
	}
}
