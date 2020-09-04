package com.web.jsp.Member.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Member implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -1025448881292428230L;
	
	// 가입용
	// 조회용
	// 데이터용
	
	private String userName;
	private String userId;
	private String userPwd;
	private String email;
	private String phone;
	private Date birth;
	private String gender;
	private String address;
	private Date enrollDate;
	
	
	public Member() {}
	
	
	
	public Member(String userId) {
		super();
		this.userId = userId;
	}



	public Member(String userId, String userPwd) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
	}

	public Member(String userName, String userId, String userPwd, String email, String phone, Date birth, String gender,
			String address) {
		super();
		this.userName = userName;
		this.userId = userId;
		this.userPwd = userPwd;
		this.email = email;
		this.phone = phone;
		this.birth = birth;
		this.gender = gender;
		this.address = address;
	}


	public Member(String userName, String userId, String userPwd, String email, String phone, Date birth, String gender,
			String address, Date enrollDate) {
		super();
		this.userName = userName;
		this.userId = userId;
		this.userPwd = userPwd;
		this.email = email;
		this.phone = phone;
		this.birth = birth;
		this.gender = gender;
		this.address = address;
		this.enrollDate = enrollDate;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getUserPwd() {
		return userPwd;
	}


	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public Date getBirth() {
		return birth;
	}


	public void setBirth(Date birth) {
		this.birth = birth;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public Date getEnrollDate() {
		return enrollDate;
	}


	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}


	@Override
	public String toString() {
		return "userName=" + userName + ", userId=" + userId + ", userPwd=" + userPwd + ", email=" + email
				+ ", phone=" + phone + ", birth=" + birth + ", gender=" + gender + ", address=" + address
				+ ", enrollDate=" + enrollDate;
	}

	
	

	
	
	
	
	
}
