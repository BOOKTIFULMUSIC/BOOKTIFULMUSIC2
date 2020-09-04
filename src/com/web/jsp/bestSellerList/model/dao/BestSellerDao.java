package com.web.jsp.bestSellerList.model.dao;

import static com.web.jsp.common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.web.jsp.bestSellerList.model.vo.BestSeller;
import com.web.jsp.book.model.vo.Book;

public class BestSellerDao {

	Properties prop;

	public BestSellerDao() {
		prop = new Properties();

		String filePath = BestSellerDao.class
				.getResource("/config/bestSeller-query.properties").getPath();
		try {
			prop.load(new FileReader(filePath));
		}catch(FileNotFoundException e) {
			e.printStackTrace();
		}catch(IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<BestSeller> getBestSeller(Connection con) {
		ArrayList<BestSeller> bList = new ArrayList<BestSeller>();

		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String sql = prop.getProperty("getBestSeller");

		try {
			System.out.println("sql : " + sql);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1,10);
			pstmt.setInt(2,1);
			rset = pstmt.executeQuery();

			while(rset.next()){

				/*BNO
				BTITLE
				AUTHOR
				PUBLISHER
				WRITERDATE
				BGENRE
				PRICE
				BLIKECOUNT
				BIMAGE
				BREVIEWCOUNT*/
				Long bno = rset.getLong("BNO");
				String btitle = rset.getString("BTITLE");
				String author = rset.getString("AUTHOR");
				String publisher = rset.getString("PUBLISHER");
				String writerDate = rset.getString("WRITERDATE");
				String bgenre = rset.getString("BGENRE");
				int price = rset.getInt("PRICE");
				int bLikeCount = rset.getInt("BLIKECOUNT");
				int bReviewCount = rset.getInt("BREVIEWCOUNT");
				String bImage = rset.getString("BIMAGE");
				int bestSeq = rset.getInt("BESTSEQ");
				bList.add(new BestSeller(bno,btitle,author,publisher,writerDate,bgenre,price,bLikeCount,bReviewCount,bImage,bestSeq));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(rset);
			close(pstmt);
		}
		System.out.println("dao list : " + bList);
		return bList;
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

	public ArrayList<BestSeller> selectList(Connection con, int currentPage, int limit) {
		
		ArrayList<BestSeller> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("getBottomSeller");
		
		try {
			pstmt = con.prepareStatement(sql);
			int startRow = (currentPage-1)*limit +1; // 3-1*10 21
			int endRow = startRow + limit -1; // 30
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, startRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<BestSeller>();
			
			while(rset.next()) {
				Long bno = rset.getLong("BNO");
				String btitle = rset.getString("BTITLE");
				String author = rset.getString("AUTHOR");
				String publisher = rset.getString("PUBLISHER");
				String writerDate = rset.getString("WRITERDATE");
				String bgenre = rset.getString("BGENRE");
				int price = rset.getInt("PRICE");
				int bLikeCount = rset.getInt("BLIKECOUNT");
				int bReviewCount = rset.getInt("BREVIEWCOUNT");
				String bImage = rset.getString("BIMAGE");
				int bestSeq = rset.getInt("BESTSEQ");
				list.add(new BestSeller(bno,btitle,author,publisher,writerDate,bgenre,price,bLikeCount,bReviewCount,bImage,bestSeq));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

}
