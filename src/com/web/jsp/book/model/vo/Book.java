package com.web.jsp.book.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Book implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -5713784972985715854L;
	
	private Long bno;
	private String btitle;
	private String author;
	private String publisher;
	private String writerDate;
	private String bgenre;
	private int price;
	private int bLikeCount;
	private int bReviewCount;
	private String bImage;
	private String bStory;
	
	public Book() {}

	
	public Book(String btitle, String author, int bLikeCount, String bImage) {
		super();
		this.btitle = btitle;
		this.author = author;
		this.bLikeCount = bLikeCount;
		this.bImage = bImage;
	}


	public Book(Long bno, String btitle, String author, String publisher, String bgenre, int bLikeCount,
			int bReviewCount, String bImage) {
		super();
		this.bno = bno;
		this.btitle = btitle;
		this.author = author;
		this.publisher = publisher;
		this.bgenre = bgenre;
		this.bLikeCount = bLikeCount;
		this.bReviewCount = bReviewCount;
		this.bImage = bImage;
	}

	public Book(Long bno, String btitle, String author, String publisher, String writerDate, String bgenre, int price,
			int bLikeCount, int bReviewCount, String bImage, String bStory) {
		super();
		this.bno = bno;
		this.btitle = btitle;
		this.author = author;
		this.publisher = publisher;
		this.writerDate = writerDate;
		this.bgenre = bgenre;
		this.price = price;
		this.bLikeCount = bLikeCount;
		this.bReviewCount = bReviewCount;
		this.bImage = bImage;
		this.bStory = bStory;
	}

	public Long getBno() {
		return bno;
	}

	public void setBno(Long bno) {
		this.bno = bno;
	}

	public String getBtitle() {
		return btitle;
	}

	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getWriterDate() {
		return writerDate;
	}

	public void setWriterDate(String writerDate) {
		this.writerDate = writerDate;
	}

	public String getBgenre() {
		return bgenre;
	}

	public void setBgenre(String bgenre) {
		this.bgenre = bgenre;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getbLikeCount() {
		return bLikeCount;
	}

	public void setbLikeCount(int bLikeCount) {
		this.bLikeCount = bLikeCount;
	}

	public int getbReviewCount() {
		return bReviewCount;
	}

	public void setbReviewCount(int bReviewCount) {
		this.bReviewCount = bReviewCount;
	}

	public String getbImage() {
		return bImage;
	}

	public void setbImage(String bImage) {
		this.bImage = bImage;
	}

	public String getbStory() {
		return bStory;
	}

	public void setbStory(String bStory) {
		this.bStory = bStory;
	}

	@Override
	public String toString() {
		return "bno=" + bno + ", btitle=" + btitle + ", author=" + author + ", publisher=" + publisher
				+ ", writerDate=" + writerDate + ", bgenre=" + bgenre + ", price=" + price + ", bLikeCount="
				+ bLikeCount + ", bReviewCount=" + bReviewCount + ", bImage=" + bImage + ", bStory=" + bStory;
	}

	

	
}
