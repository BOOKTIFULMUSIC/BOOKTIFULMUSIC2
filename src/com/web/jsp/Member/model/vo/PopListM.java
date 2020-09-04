package com.web.jsp.Member.model.vo;

import java.io.Serializable;

public class PopListM implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -1090721289766231646L;

	private int pop_no_M;
	private String userId;
	private String pop_list_M;
	
	public PopListM() {
	}

	public int getPop_no_M() {
		return pop_no_M;
	}

	public void setPop_no_M(int pop_no_M) {
		this.pop_no_M = pop_no_M;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPop_list_M() {
		return pop_list_M;
	}

	public void setPop_list_M(String pop_list_M) {
		this.pop_list_M = pop_list_M;
	}

	@Override
	public String toString() {
		return pop_no_M + ", "+ pop_list_M + ", " + pop_list_M;
	}
	
	
}
