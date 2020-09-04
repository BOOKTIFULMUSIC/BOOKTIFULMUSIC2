package com.web.jsp.Review.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class musicReview implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -5615648675815490035L;

	private int mRno;             // 뮤직리뷰번호
	private String userId;        // 유저아이디
	private int musicNo;          // 뮤직넘버
	private String musicReview;   // 뮤직리뷰
	private Date mrDate;           // 뮤직리뷰 작성일

	
	public musicReview() {}

	public musicReview(String userId, int musicNo, String musicReview) {
		super();
		this.userId = userId;
		this.musicNo = musicNo;
		this.musicReview = musicReview;

	}

	public musicReview(int mRno, String userId, int musicNo, String musicReview, Date mrDate) {
		super();
		this.mRno = mRno;
		this.userId = userId;
		this.musicNo = musicNo;
		this.musicReview = musicReview;
		this.mrDate = mrDate;
	}

	public int getmRno() {
		return mRno;
	}

	public void setmRno(int mRno) {
		this.mRno = mRno;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getMusicNo() {
		return musicNo;
	}

	public void setMusicNo(int musicNo) {
		this.musicNo = musicNo;
	}

	public String getMusicReview() {
		return musicReview;
	}

	public void setMusicReview(String musicReview) {
		this.musicReview = musicReview;
	}

	public Date getmrDate() {
		return mrDate;
	}

	public void setmDate(Date mrDate) {
		this.mrDate = mrDate;
	}

	@Override
	public String toString() {
		return "musicReview [mRno=" + mRno + ", userId=" + userId + ", musicNo=" + musicNo + ", musicReview="
				+ musicReview + ", mrDate=" + mrDate + "]";
	}

	
}
