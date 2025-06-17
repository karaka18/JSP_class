package studyJSP;

/*
 * 사람객체
*/

public class Person {
	private String name;
//	private String phone;
	private Phone p;
	
	// get/set 메서드
	// alt shift s + v
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Phone getP() {
		return p;
	}
	public void setP(Phone p) {
		this.p = p;
	}
	
}
