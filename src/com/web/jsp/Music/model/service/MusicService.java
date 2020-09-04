package com.web.jsp.Music.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.web.jsp.Music.model.dao.MusicDao;
import com.web.jsp.Music.model.vo.Music;


import static com.web.jsp.common.JDBCTemplate.*;

public class MusicService {
	
	private MusicDao mDao = new MusicDao();
	private Connection con;

	public ArrayList<Music> musicChart() {
		
		con = getConnection();
		
		ArrayList<Music> list = mDao.musicChart(con);
		close(con);
		return list;
	}
	
	public int getListCount() {
		con = getConnection();
		int listCount = mDao.getListCount(con);
		close(con);
		return listCount;
	}

	public ArrayList<Music> selectList( int currentPage, int limit) {
		con = getConnection();
		
		ArrayList<Music> list = mDao.selectList(con,currentPage,limit);
		close(con);
		return list;
	}

	public ArrayList<Music> userGenre(String userId, int currentPage, int limit) {
		con = getConnection();
		
		ArrayList<Music> umList = mDao.userGenre(con,userId,currentPage,limit);
		close(con);
		return umList;
	}
	
	public int getSearchListCount(String[] gArr) {
		con = getConnection();
		int SearchlistCount = mDao.getSearchListCount(con,gArr);
		close(con);
		return SearchlistCount;
	}

	public ArrayList<Music> searchGenre(String[] gArr, int currentPage, int limit) {
		con = getConnection();
		ArrayList<Music> sList = mDao.searchGenre(con,gArr,currentPage,limit);
		close(con);
		return sList;
	}

	public Music selectOne(String title) {
		con = getConnection();
		
		Music m = mDao.selectOne(con, title);
		
	
		
		close(con);
		return m;
	}
}
