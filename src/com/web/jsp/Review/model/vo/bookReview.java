package com.web.jsp.Review.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class bookReview implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 5819418249271317726L;
	
	private int bRno;             // 북리뷰번호
	private String userId;        // 유저아이디
	private int bookNo;           // 북넘버
	private String bookReview;    // 북리뷰
	private Date brDate;           // 북리뷰 작성일
	
	public bookReview() {}

	public bookReview(String userId, int bookNo, String bookReview) {
		super();
		this.userId = userId;
		this.bookNo = bookNo;
		this.bookReview = bookReview;
	}

	public bookReview(int bRno, String userId, int bookNo, String bookReview, Date brDate) {
		super();
		this.bRno = bRno;
		this.userId = userId;
		this.bookNo = bookNo;
		this.bookReview = bookReview;
		this.brDate = brDate;
	}

	public int getbRno() {
		return bRno;
	}

	public void setbRno(int bRno) {
		this.bRno = bRno;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getBookNo() {
		return bookNo;
	}

	public void setBookNo(int bookNo) {
		this.bookNo = bookNo;
	}

	public String getBookReview() {
		return bookReview;
	}

	public void setBookReview(String bookReview) {
		this.bookReview = bookReview;
	}

	public Date getbrDate() {
		return brDate;
	}

	public void setbDate(Date brDate) {
		this.brDate = brDate;
	}

	@Override
	public String toString() {
		return "bookReview [bRno=" + bRno + ", userId=" + userId + ", bookNo=" + bookNo + ", bookReview=" + bookReview
				+ ", brDate=" + brDate + "]";
	}
	
	
	
	

}
