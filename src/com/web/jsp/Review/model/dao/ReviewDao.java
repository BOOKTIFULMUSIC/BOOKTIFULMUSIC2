package com.web.jsp.Review.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.web.jsp.Review.model.vo.musicReview;
import static com.web.jsp.common.JDBCTemplate.*;

public class ReviewDao {
	
	private Properties prop = new Properties();
	public ReviewDao() {
		String filePath = 
				ReviewDao.class
				.getResource("/config/review-query.properties")
				.getPath();
		try {
			prop.load(new FileReader(filePath));
		}catch(IOException e) {
			e.printStackTrace();
		}
	}	
	

	public ArrayList<musicReview> selectList(Connection con, int musicNo) {
		
		ArrayList<musicReview> mlist = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("reviewList");
		
		mlist = new ArrayList<musicReview>();
		
		try {
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(2, "userId");
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				musicReview mr = new musicReview();
				mr.setmRno(rset.getInt("M_RNO"));
				mr.setUserId("USERID");
				mr.setMusicNo(rset.getInt("MUSIC_NO"));
				mr.setMusicReview(rset.getString("MUSIC_REVIEW"));
				mr.setmDate(rset.getDate("mrDate"));
				mlist.add(mr);
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			
			close(rset);
			close(pstmt);
		}
		

		return mlist;
	}

	public int insertReview(Connection con, musicReview mr) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertReview");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, mr.getmRno());
			pstmt.setString(2, mr.getUserId());
			pstmt.setInt(3, mr.getMusicNo());
			pstmt.setString(4, mr.getMusicReview());
			
			result = pstmt.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		
		return result;
	}

}
