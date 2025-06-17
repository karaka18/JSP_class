package studyJSP;

/*
 * 스마트폰 객체
*/

public class Phone {
	private String model;
	private String telNo;
	//get/set 메서드 정의
	// alt shift s + v
	
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getTelNo() {
		return telNo;
	}
	public void setTelNo(String telNo) {
		this.telNo = telNo;
	}
	
	// alt shift s + s
	@Override
	public String toString() {
		return "Phone [model=" + model + ", telNo=" + telNo + "]";
	}
	
}
