package com.web.jsp.Member.model.vo;

import java.io.Serializable;

public class Basket implements Serializable{
   
	/**
	 * 
	 */
	private static final long serialVersionUID = 6381715772426467798L;
	private int oNo;
	private String bTitle;
	private int bNo;
	private int price;
	private String bImage;
	private String userId;
	public Basket() {
	}
	public Basket(int oNo, String bTitle, int bNo, int price, String bImage, String userId) {
		super();
		this.oNo = oNo;
		this.bTitle = bTitle;
		this.bNo = bNo;
		this.price = price;
		this.bImage = bImage;
		this.userId = userId;
	}
	public int getoNo() {
		return oNo;
	}
	public void setoNo(int oNo) {
		this.oNo = oNo;
	}
	public String getbTitle() {
		return bTitle;
	}
	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}
	public int getbNo() {
		return bNo;
	}
	public void setbNo(int bNo) {
		this.bNo = bNo;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getbImage() {
		return bImage;
	}
	public void setbImage(String bImage) {
		this.bImage = bImage;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	@Override
	public String toString() {
		return "oNo=" + oNo + ", bTitle=" + bTitle + ", bNo=" + bNo + ", price=" + price + ", bImage=" + bImage
				+ ", userId=" + userId;
	}
	
	
	
	
}
