package com.hellokoding.auth.model;

import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "section0")
public class Section0 {
	
	public Section0(String user, String fname, String mname, String lname, String phone, String email) {
		super();
		this.user = user;
		this.fname = fname;
		this.mname = mname;
		this.lname = lname;
		this.phone = phone;
		this.email = email;
	}
	public Section0() {
	}

	private String user;
	private String fname;
	private String mname;
	private String lname;
	private String phone;
	private String email;
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
}
