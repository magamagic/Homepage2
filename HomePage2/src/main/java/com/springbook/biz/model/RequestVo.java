package com.springbook.biz.model;


public class RequestVo {
	private String pname;
	private String serial;
	private String email;
	
	public RequestVo() {
		
	}
	
	public RequestVo(String pname, String serial, String email) {
		this.pname = pname;
		this.serial = serial;
		this.email = email;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getSerial() {
		return serial;
	}

	public void setSerial(String serial) {
		this.serial = serial;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "RequesVo [pname=" + pname + ", serial=" + serial + ", email=" + email + "]";
	}
	
	

}
