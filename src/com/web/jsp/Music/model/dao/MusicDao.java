package com.web.jsp.Music.model.dao;

import static com.web.jsp.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.web.jsp.Music.model.vo.Music;

public class MusicDao {
	
	private Properties prop;
	
	public MusicDao() {
		
    prop = new Properties();
	String filePath = MusicDao.class.getResource("/config/music-query.properties").getPath();
	
	try {
		prop.load(new FileReader(filePath));
	}catch(IOException e) {
		e.printStackTrace();
	}
}
public ArrayList<Music> musicChart(Connection con) {
		
		ArrayList<Music> list = null;
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("musicChart");
		
		try {
			
			stmt = con.createStatement();
			rset = stmt.executeQuery(sql);
			
			list = new ArrayList<Music>();
			
			while(rset.next()) {
				Music m = new Music();
				
				m.setMusicNo(rset.getInt(1));
				m.setMusicNm(rset.getString("music_Nm"));
				m.setMusicArtist(rset.getString("music_Artist"));
				m.setMusicGenre(rset.getString("music_Genre"));
				m.setRelativeAlbumNo(rset.getString("relative_Album_No"));
				m.setLikeMusic(rset.getString("like_Music"));
				m.setMusicImage(rset.getString("music_Image"));
				m.setMusicType(rset.getString("music_Type"));
				
//				m.setAlbumImage(rset.getString("album_Image"));
//				m.setReviewAlbum(rset.getString("review_Album"));
				
				list.add(m);				
				
			}
			System.out.println(list);
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		
		return list;
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
	public ArrayList<Music> selectList(Connection con, int currentPage, int limit) {
		ArrayList<Music> list = null;
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
			
			list = new ArrayList<Music>();
			
			while(rset.next()) {
				Music m = new Music();
				
				m.setMusicNo(rset.getInt(1));
				m.setMusicNm(rset.getString("music_Nm"));
				m.setMusicArtist(rset.getString("music_Artist"));
				m.setMusicGenre(rset.getString("music_Genre"));
				m.setRelativeAlbumNo(rset.getString("relative_Album_No"));
				m.setLikeMusic(rset.getString("like_Music"));
				m.setMusicImage(rset.getString("music_Image"));
				m.setMusicType(rset.getString("music_Type"));
			
				list.add(m);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	public ArrayList<Music> userGenre(Connection con, String userId, int currentPage, int limit) {
		ArrayList<Music> umList = null;
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
			
			umList = new ArrayList<Music>();
			
			while(rset.next()) {
				Music m = new Music();
				m.setMusicNo(rset.getInt(1));
				m.setMusicNm(rset.getString("music_Nm"));
				m.setMusicArtist(rset.getString("music_Artist"));
				m.setMusicGenre(rset.getString("music_Genre"));
				m.setRelativeAlbumNo(rset.getString("relative_Album_No"));
				m.setLikeMusic(rset.getString("like_Music"));
				m.setMusicImage(rset.getString("music_Image"));
				m.setMusicType(rset.getString("music_Type"));
			
				umList.add(m);
			}
			System.out.println("Dao"+umList);
		}catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return umList;
	}
	
	public int getSearchListCount(Connection con, String[] gArr) {
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
	public ArrayList<Music> searchGenre(Connection con, String[] gArr, int currentPage, int limit) {
		ArrayList<Music> sList = null;
		ArrayList<Music> AllList = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("searchGenre");
		
		try {
			pstmt = con.prepareStatement(sql);
			int startRow = (currentPage-1)*limit +1;
			int endRow = startRow + limit -1;
			AllList = new ArrayList<Music>();
			for(String genre : gArr) {
				pstmt.setString(1, genre);
				pstmt.setInt(2, endRow);
				pstmt.setInt(3, startRow);
		
				rset = pstmt.executeQuery();
				
				sList = new ArrayList<Music>();
				
				while(rset.next()) {
					Music m = new Music();
					m.setMusicNo(rset.getInt(1));
					m.setMusicNm(rset.getString("music_Nm"));
					m.setMusicArtist(rset.getString("music_Artist"));
					m.setMusicGenre(rset.getString("music_Genre"));
					m.setRelativeAlbumNo(rset.getString("relative_Album_No"));
					m.setLikeMusic(rset.getString("like_Music"));
					m.setMusicImage(rset.getString("music_Image"));
					m.setMusicType(rset.getString("music_Type"));
					sList.add(m);
					
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
	
	public Music selectOne(Connection con, String title) {
		Music m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectOne");
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, title);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Music();
				
				m.setMusicNm(title);
				m.setMusicArtist(rset.getString("music_Artist"));
				m.setMusicGenre(rset.getString("music_Genre"));
				m.setRelativeAlbumNo(rset.getString("relative_Album_No"));
				m.setLikeMusic(rset.getString("like_Music"));
				m.setMusicImage(rset.getString("music_Image"));
				m.setMusicType(rset.getString("music_Type"));

			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return m;
	}


}
