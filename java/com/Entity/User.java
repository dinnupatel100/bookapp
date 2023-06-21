package com.Entity;

public class User {
     private int id;
     private String email;
     private String name;
     private String phno;
     private String password;
     private String state;
     private String district;
     private String city;
     private String type;
     private String aadhar;
     
     
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhno() {
		return phno;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getCity() {
		return city;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getAadhar() {
		return aadhar;
	}
	public void setAadhar(String aadhar) {
		this.aadhar = aadhar;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
	@Override
	public String toString() {
		return "User [id=" + id + ", email=" + email + ", name=" + name + ", phno=" + phno + ", password=" + password
				+ ", state=" + state + ", district=" + district + ", city=" + city + "]";
	}
	public User(String email, String name, String phno, String password, String state, String district, String city,String type) {
		super();
		this.email = email;
		this.name = name;
		this.phno = phno;
		this.password = password;
		this.state = state;
		this.district = district;
		this.city = city;
		this.type = type;
		
	}
	public User(String aadhar) {
		super();
		this.aadhar = aadhar;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
