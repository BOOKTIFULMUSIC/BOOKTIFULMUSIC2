package com.web.jsp.bestSellerList.model.vo;

import java.io.Serializable;

public class BestSeller implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 5271914825429325965L;
	
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
	private int bestSeq;
	
	public BestSeller() {}
	
	
	public BestSeller(Long bno, String btitle, String author, String publisher, String writerDate, String bgenre,
			int price, int bLikeCount, int bReviewCount, String bImage, int bestSeq) {
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
		this.bestSeq = bestSeq;
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

	public int getBestSeq() {
		return bestSeq;
	}

	public void setBestSeq(int bestSeq) {
		this.bestSeq = bestSeq;
	}

	@Override
	public String toString() {
		return "BestSeller [bno=" + bno + ", btitle=" + btitle + ", author=" + author + ", publisher=" + publisher
				+ ", writerDate=" + writerDate + ", bgenre=" + bgenre + ", price=" + price + ", bLikeCount="
				+ bLikeCount + ", bReviewCount=" + bReviewCount + ", bImage=" + bImage + ", bestSeq=" + bestSeq + "]";
	}
	
	
	
}
