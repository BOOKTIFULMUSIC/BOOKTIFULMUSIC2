package com.web.jsp.Member.model.vo;

import java.io.Serializable;

public class PopListB implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 3680557091774787904L;

	private int pop_no_B;
	private String userId;
	private String pop_list_B;
	
	public PopListB() {
	}
	
	
	
	public int getPop_no_B() {
		return pop_no_B;
	}

	public void setPop_no_B(int pop_no_B) {
		this.pop_no_B = pop_no_B;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPop_list_B() {
		return pop_list_B;
	}

	public void setPop_list_B(String pop_list_B) {
		this.pop_list_B = pop_list_B;
	}



	@Override
	public String toString() {
		return pop_no_B + ", " + userId + ", " + pop_list_B;
	}
	
	
}
