package com.itwillbs.spring;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.FileSystemResource;

public class HelloApp {
	
	public static void sayHi(String name) {
		System.out.println(name+ " Hi!");
	}
	
	public static void main(String[] args) {
		
		// 1. 변수
		String name = "아이티윌";
		System.out.println(name);
		
		// 2. 메서드 
		sayHi(name);
		
		// 3. 클래스(객체) => 강한결합
		MessageBean mb = new MessageBean();
		mb.sayHello(name);
		
		// 4. 인터페이스를 구현하는 객체
		MessageImpl mi = new MessageImpl();	// 강한결합
		mi.say(name);
		
		// 업캐스팅을 통한 객체 구현 => 약한결합
		Message m = new MessageImpl();
		m.say(name);
		
		// 5. 	의존성 주입(객체를 직접 생성X, 만들어진 객체 사용)
		//		=> 약한결합 관계를 구현
		
		// xml파일 불러오기
		BeanFactory factory =
				new XmlBeanFactory(new FileSystemResource("beans.xml"));
		
		// System.out.println(factory);
		
		// MessageImpl 객체를 생성(X), 객체를 의존관계 주입
		Message m2 = (Message)factory.getBean("msgBean");
		
		m2.say(name);
		
		// 6. 스프링을 사용한 약한결합 (의존관계 주입)
		// @Inject
		// private Message m3;
		// m3.say(name);
		
		
		
		
		
		
	}
}
