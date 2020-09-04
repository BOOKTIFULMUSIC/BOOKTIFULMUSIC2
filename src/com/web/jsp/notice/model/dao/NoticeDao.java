package com.web.jsp.notice.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.web.jsp.notice.model.vo.Notice;
import static com.web.jsp.common.JDBCTemplate.*;

public class NoticeDao {
	
	private Properties prop = null;
	
	public NoticeDao(){
		prop = new Properties();
		String filePath = NoticeDao.class
						 .getResource("/config/notice-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	public int getListCount(Connection con, String ntype) {
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("listCount");
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, ntype);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return listCount;
	}
	
	public int getSearchListCount(Connection con, String category, String keyword, String ntype) {
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = null;
		
		switch(category) {
		case "제목"	: sql = prop.getProperty("searchNtitleListCount"); break;
		case "작성자"	: sql = prop.getProperty("searchNwriterListCount"); break;
		case "내용"	: sql = prop.getProperty("searchNcontentListCount"); break;		
		}
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, keyword);
			pstmt.setString(2, ntype);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return listCount;
	}
	

	public ArrayList<Notice> selectList(Connection con, String ntype, int currentPage, int limit) {
		
		ArrayList<Notice> list = new ArrayList<Notice>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = con.prepareStatement(sql);
			int startRow = (currentPage-1)*limit +1; // 3-1*10 21
			int endRow = startRow + limit -1; // 30
			pstmt.setString(1, ntype);
			pstmt.setInt(2, endRow);
			pstmt.setInt(3, startRow);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				Notice n = new Notice();
				n.setRnum(rset.getInt(1));
				n.setNno(rset.getInt("nno"));
				n.setNtype(rset.getString("type"));
				n.setNtitle(rset.getString("ntitle"));
				n.setNwriter(rset.getString("nwriter"));
				n.setNcontent(rset.getString("ncontent"));
				n.setNdate(rset.getDate("ndate"));
				
				list.add(n);
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		
		return list;
	}

	public Notice selectOne(Connection con, int rnum, int nno) {
		
		Notice n = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectOne");
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, nno);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				
				n = new Notice();
				
				n.setRnum(rnum);
				n.setNno(nno);
				n.setNtype(rset.getString("type"));
				n.setNtitle(rset.getString("ntitle"));
				n.setNwriter(rset.getString("nwriter"));
				n.setNcontent(rset.getString("ncontent"));
				n.setNdate(rset.getDate("ndate"));
				
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		
		return n;
	}

	public ArrayList<Notice> searchNotice(Connection con, String category, String keyword, String ntype, int currentPage, int limit) {
		
		ArrayList<Notice> list = new ArrayList<Notice>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = null;
		
		switch(category) {
		case "제목"	: sql = prop.getProperty("searchNtitleNotice"); break;
		case "작성자"	: sql = prop.getProperty("searchNwriterNotice"); break;
		case "내용"	: sql = prop.getProperty("searchNcontentNotice"); break;		
		}
		
		try {
			pstmt = con.prepareStatement(sql);
			int startRow = (currentPage-1)*limit +1; // 3-1*10 21
			int endRow = startRow + limit -1; // 30
			
			pstmt.setString(1, keyword);
			pstmt.setString(2, ntype);
			pstmt.setInt(3, endRow);
			pstmt.setInt(4, startRow);
			rset = pstmt.executeQuery();
			
			
			
			while(rset.next()) {
				
				Notice n = new Notice();
				
				n.setRnum(rset.getInt(1));
				n.setNno(rset.getInt("nno"));
				n.setNtype(rset.getString("type"));
				n.setNtitle(rset.getString("ntitle"));
				n.setNwriter(rset.getString("nwriter"));
				n.setNcontent(rset.getString("ncontent"));
				n.setNdate(rset.getDate("ndate"));
				
				list.add(n);
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	public int insertNotice(Connection con, String ntype, String ntitle, String nwriter, String ncontent) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertNotice");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, ntype);
			pstmt.setString(2, ntitle);
			pstmt.setString(3, nwriter);
			pstmt.setString(4, ncontent);
			
			result = pstmt.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public int updateNotice(Connection con, int nno, String ntitle, String ncontent) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateNotice");
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, ntitle);
			pstmt.setString(2, ncontent);
			pstmt.setInt(3, nno);
			
			result = pstmt.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public int deleteNotice(Connection con, int nno) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteNotice");
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, nno);
			
			result = pstmt.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}


}
