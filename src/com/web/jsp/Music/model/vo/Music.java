package com.web.jsp.Music.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Music implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 929712180808778617L;
	
	private int musicNo;             // 뮤직넘버
	private String musicNm ;         // 뮤직이름
	private String musicArtist;      // 뮤직아티스트
	private String musicGenre;       // 뮤직 장르
	private String relativeAlbumNo;  // 뮤직앨범넘버
	private String likeMusic;        // 뮤직좋아요
	private String musicImage;       // 뮤직이미지
	private String musicType;        // 뮤직타입(국내/해외)
	
	private String albumImage;       // 앨범이미지
	private String reviewAlbum;      // 앨범리뷰
	
	
	
	public Music() {}
	
	

	public Music(String musicNm, String likeMusic,String reviewAlbum, String albumImage) {
		super();
		this.musicNm = musicNm;
		this.likeMusic = likeMusic;
		this.reviewAlbum = reviewAlbum;
		this.albumImage = albumImage;
	}



	public Music(int musicNo, String musicNm, String musicArtist, String musicGenre, String relativeAlbumNo,
			String likeMusic, String musicImage, String musicType, String reviewAlbum, String albumImage) {
		super();
		this.musicNo = musicNo;
		this.musicNm = musicNm;
		this.musicArtist = musicArtist;
		this.musicGenre = musicGenre;
		this.relativeAlbumNo = relativeAlbumNo;
		this.likeMusic = likeMusic;
		this.musicImage = musicImage;
		this.musicType = musicType;
		this.reviewAlbum = reviewAlbum;
		this.albumImage = albumImage;
	}



	public int getMusicNo() {
		return musicNo;
	}



	public void setMusicNo(int musicNo) {
		this.musicNo = musicNo;
	}



	public String getMusicNm() {
		return musicNm;
	}



	public void setMusicNm(String musicNm) {
		this.musicNm = musicNm;
	}



	public String getMusicArtist() {
		return musicArtist;
	}



	public void setMusicArtist(String musicArtist) {
		this.musicArtist = musicArtist;
	}



	public String getMusicGenre() {
		return musicGenre;
	}



	public void setMusicGenre(String musicGenre) {
		this.musicGenre = musicGenre;
	}



	public String getRelativeAlbumNo() {
		return relativeAlbumNo;
	}



	public void setRelativeAlbumNo(String relativeAlbumNo) {
		this.relativeAlbumNo = relativeAlbumNo;
	}



	public String getLikeMusic() {
		return likeMusic;
	}



	public void setLikeMusic(String likeMusic) {
		this.likeMusic = likeMusic;
	}



	public String getMusicImage() {
		return musicImage;
	}



	public void setMusicImage(String musicImage) {
		this.musicImage = musicImage;
	}



	public String getMusicType() {
		return musicType;
	}



	public void setMusicType(String musicType) {
		this.musicType = musicType;
	}
	
	
	



	public String getReviewAlbum() {
		return reviewAlbum;
	}



	public void setReviewAlbum(String reviewAlbum) {
		this.reviewAlbum = reviewAlbum;
	}
	



	public String getAlbumImage() {
		return albumImage;
	}



	public void setAlbumImage(String albumImage) {
		this.albumImage = albumImage;
	}



	@Override
	public String toString() {
		return "Music [musicNo=" + musicNo + ", musicNm=" + musicNm + ", musicArtist=" + musicArtist + ", musicGenre="
				+ musicGenre + ", relativeAlbumNo=" + relativeAlbumNo + ", likeMusic=" + likeMusic + ", musicImage="
				+ musicImage + ", musicType=" + musicType + ", albumImage=" + albumImage + ", reviewAlbum="
				+ reviewAlbum + "]";
	}
	
	


}
