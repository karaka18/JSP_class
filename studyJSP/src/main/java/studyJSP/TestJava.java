package studyJSP;

class Parent{
	public void pprn() {
		System.out.println("pprn()");
	}
}

class Child extends Parent{
	public void cprn() {
		System.out.println("cprn();");
	}
}


public class TestJava {

	public static void main(String[] args) {
		
//		for(int i=1;;i++) {
//			System.out.println(i+" ");			
//		}
		
		
		Parent p = new Parent();
		p.pprn();
		//p.cprn();
		System.out.println("------------------------");
		Child c = new Child();
		c.cprn();
		c.pprn();
		
		System.out.println("---------업캐스팅---------");
		// 업캐스팅 : 자식객체를 부모타입의 객체로 형변환
		//		  	  서브클래스객체를 슈퍼클래스 타입으로 형변환
		//            서브클래스 인스턴스를 슈퍼클래스의 레퍼런스에 저장
		
		//Parent p1 = c;
		Parent p1 = new Child();
		p1.pprn();
		// p1.cprn();(undefiend)
		// => 업캐스팅된 객체는 상속받은 부분만 사용가능(나머지는 은닉)
		// => 업캐스팅을 수행하면 참조 영역이 축소된다.
		//session.setAttribute(String:"point", Object:"1잔");
		
		
			System.out.println("---------다운 캐스팅---------");
			// 다운캐스팅 : 부모객체를 자식타입의 객체로 형변환
			//	  	        슈퍼클래스 객체를 서브클래스 타입으로 형변환
			//              슈퍼클래스 인스턴스를 서브클래스의 레퍼런스에 저장
			
			
//				Child c1 = new Parent(); //Type mismatch: cannot convert from Parent to Child
//				Child c1 = (Child)new Parent(); 
			//( 자동으로 형변환X, 개발자가 문제를 인지하고있고 그것에 따른 책임을 수행한다)
			// Child 타입으로 강제 형변환
			// => 컴파일에러를 제거(빨간줄)
			
//				c1.cprn();		
//				c1.pprn();
			// => 실행시에 예외발생
			// =>> 다운캐스팅 사용불가
			
			
			Parent p2 = new Child(); // 업캐스팅
			
			Child c2 = (Child)p2; // 업캐스팅 -> 다운캐스팅
			
			c2.cprn();
			c2.pprn();
			// => 안전한 다운캐스팅 
			
			// session.setAttribute(String:"point", Object:"1잔");
			
			// String point = (String)session.getAttribute("point");

			
			System.out.println("---------오버라이딩---------");
			
			Parent p3 = new Parent();
			p3.pprn();
			
			Child c3 = new Child();
			c3.pprn();
			c3.cprn();
			
			Parent p4 = new Child();
			p4.pprn();
			// => 부모의 pprn()는 은닉되고, 자식의 pprn()만 사용가능
			// 업캐스팅으로 인한 은닉은 무시됨
			// => 오버라이딩개념이 업/다운캐스팅보다 상위개념 (우선순위가 있음)		
	
		
		
		
		
		
		
		

	}

}