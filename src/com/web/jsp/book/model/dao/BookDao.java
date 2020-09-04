package com.web.jsp.book.model.dao;

import static com.web.jsp.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.web.jsp.book.model.vo.Book;
public class BookDao {
	
	private Properties prop;
	
	public BookDao() {
		prop = new Properties();
		
		String filePath = BookDao.class.getResource("/config/book-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	public int getListCount(Connection con) {
		int listCount = 0;
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("listCount");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(sql);
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		return listCount;
	}
	public ArrayList<Book> selectList(Connection con, int currentPage, int limit) {
		ArrayList<Book> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectGenreList");
		
		try {
			pstmt = con.prepareStatement(sql);
			int startRow = (currentPage-1)*limit +1; // 3-1*10 21
			int endRow = startRow + limit -1; // 30
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, startRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Book>();
			
			while(rset.next()) {
				Book bo = new Book();
				bo.setBno(rset.getLong("BNO"));
				bo.setBtitle(rset.getString("BTITLE"));
				bo.setAuthor(rset.getString("PUBLISHER"));
				bo.setWriterDate(rset.getString("WRITERDATE"));
				bo.setBgenre(rset.getString("BGENRE"));
				bo.setPrice(rset.getInt("PRICE"));
				bo.setbLikeCount(rset.getInt("BLIKECOUNT"));
				bo.setbReviewCount(rset.getInt("BREVIEWCOUNT"));
				bo.setbImage(rset.getString("BIMAGE"));
				bo.setbStory(rset.getString("BSTORY"));
			
				list.add(bo);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	public ArrayList<Book> userGenre(Connection con, String userId,int currentPage, int limit) {
		ArrayList<Book> ubList = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("userGenreList");
		
		try {
			pstmt = con.prepareStatement(sql);
			int startRow = (currentPage-1)*limit +1; // 3-1*10 21
			int endRow = startRow + limit -1; // 30
			pstmt.setString(1, userId);
			pstmt.setInt(2, endRow);
			pstmt.setInt(3, startRow);
			
			
			rset = pstmt.executeQuery();
			
			ubList = new ArrayList<Book>();
			
			while(rset.next()) {
				Book bo = new Book();
				bo.setBno(rset.getLong("BNO"));
				bo.setBtitle(rset.getString("BTITLE"));
				bo.setAuthor(rset.getString("PUBLISHER"));
				bo.setWriterDate(rset.getString("WRITERDATE"));
				bo.setBgenre(rset.getString("BGENRE"));
				bo.setPrice(rset.getInt("PRICE"));
				bo.setbLikeCount(rset.getInt("BLIKECOUNT"));
				bo.setbReviewCount(rset.getInt("BREVIEWCOUNT"));
				bo.setbImage(rset.getString("BIMAGE"));
				bo.setbStory(rset.getString("BSTORY"));
			
				ubList.add(bo);
			}
			System.out.println("Dao"+ubList);
		}catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return ubList;
	}
	public ArrayList<Book> searchGenre(Connection con, String[] gArr,int currentPage, int limit) {
		ArrayList<Book> sList = null;
		ArrayList<Book> AllList = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("searchGenre");
		
		try {
			pstmt = con.prepareStatement(sql);
			int startRow = (currentPage-1)*limit +1;
			int endRow = startRow + limit -1;
			AllList = new ArrayList<Book>();
			for(String genre : gArr) {
				pstmt.setString(1, genre);
				pstmt.setInt(2, endRow);
				pstmt.setInt(3, startRow);
		
				rset = pstmt.executeQuery();
				
				sList = new ArrayList<Book>();
				
				while(rset.next()) {
					Book bo = new Book();
					bo.setBno(rset.getLong("BNO"));
					bo.setBtitle(rset.getString("BTITLE"));
					bo.setAuthor(rset.getString("PUBLISHER"));
					bo.setWriterDate(rset.getString("WRITERDATE"));
					bo.setBgenre(rset.getString("BGENRE"));
					bo.setPrice(rset.getInt("PRICE"));
					bo.setbLikeCount(rset.getInt("BLIKECOUNT"));
					bo.setbReviewCount(rset.getInt("BREVIEWCOUNT"));
					bo.setbImage(rset.getString("BIMAGE"));
					bo.setbStory(rset.getString("BSTORY"));
					sList.add(bo);
					
				}
					for(int i= 0; i < 1; i++) {
						AllList.addAll(sList);
						i = 2;
					}
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return AllList;
	}
	
	public int getSearchListCount(Connection con,String[] gArr) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("searchGenreList");
		
		try {
			pstmt = con.prepareStatement(sql);
			for(String genre : gArr) {
				pstmt.setString(1, genre);
				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					result += rset.getInt(1);
				}
				
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return result;
	}
	public ArrayList<Book> LikeList(Connection con, int currentPage, int limit) {
		ArrayList<Book> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("likeList");
		
		try {
			pstmt = con.prepareStatement(sql);
			int startRow = (currentPage-1)*limit +1; // 3-1*10 21
			int endRow = startRow + limit -1; // 30
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, startRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Book>();
			
			while(rset.next()) {
				Book bo = new Book();
				bo.setBno(rset.getLong("BNO"));
				bo.setBtitle(rset.getString("BTITLE"));
				bo.setAuthor(rset.getString("PUBLISHER"));
				bo.setWriterDate(rset.getString("WRITERDATE"));
				bo.setBgenre(rset.getString("BGENRE"));
				bo.setPrice(rset.getInt("PRICE"));
				bo.setbLikeCount(rset.getInt("BLIKECOUNT"));
				bo.setbReviewCount(rset.getInt("BREVIEWCOUNT"));
				bo.setbImage(rset.getString("BIMAGE"));
				bo.setbStory(rset.getString("BSTORY"));
			
				list.add(bo);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	public Book selectOne(Connection con, String title) {
		Book b = null;

	      PreparedStatement pstmt = null;
	      ResultSet rset = null;

	      String sql = prop.getProperty("selectOne");

	      try{
	         pstmt = con.prepareStatement(sql);
	         pstmt.setString(1, title);

	         rset = pstmt.executeQuery();

	         if(rset.next()){
	            b = new Book();
	            b.setBno(rset.getLong("BNO"));
	            b.setBtitle(title);
	            b.setAuthor(rset.getString("PUBLISHER"));
	            b.setWriterDate(rset.getString("WRITERDATE"));
	            b.setBgenre(rset.getString("BGENRE"));
	            b.setPrice(rset.getInt("PRICE"));
	            b.setbLikeCount(rset.getInt("BLIKECOUNT"));
	            b.setbReviewCount(rset.getInt("BREVIEWCOUNT"));
	            b.setbImage(rset.getString("BIMAGE"));
	            b.setbStory(rset.getString("BSTORY"));
	         }


	      }catch(SQLException e){
	         e.printStackTrace();
	      }finally{
	         close(rset);
	         close(pstmt);
	      }

	      return b;
	   }

}
