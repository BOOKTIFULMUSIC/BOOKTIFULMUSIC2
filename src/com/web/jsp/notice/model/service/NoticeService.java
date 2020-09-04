package com.web.jsp.notice.model.service;

import static com.web.jsp.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.web.jsp.notice.model.dao.NoticeDao;
import com.web.jsp.notice.model.vo.Notice;

public class NoticeService {
	
	private Connection con;
	
	private NoticeDao nDao = new NoticeDao();
	
	public int getListCount(String ntype) {
		con = getConnection();
		int listCount = nDao.getListCount(con, ntype);
		close(con);
		return listCount;
	}

	public int getSearchListCount(String category, String keyword, String ntype) {
		con = getConnection();
		int listCount = nDao.getSearchListCount(con, category, keyword, ntype);
		close(con);
		
		return listCount;
	}
	
	
	public ArrayList<Notice> selectList(String ntype,int currentPage, int limit) {
		
		con = getConnection();
		
		ArrayList<Notice> list = nDao.selectList(con, ntype , currentPage, limit);
		
		close(con);
		
		
		return list;
	}

	public Notice selectOne(int rnum, int nno) {
		
		con = getConnection();
		
		Notice n = nDao.selectOne(con, rnum, nno);
		
		close(con);
		
		return n;
	}

	public ArrayList<Notice> searchNotice(String category, String keyword, String ntype, int currentPage, int limit) {
		
		con = getConnection();
		
		ArrayList<Notice> list = nDao.searchNotice(con, category, keyword, ntype, currentPage, limit);
		
		close(con);
		
		return list;
	}

	public int insertNotice(String ntype, String ntitle, String nwriter, String ncontent) {
		con = getConnection();
		
		int result = nDao.insertNotice(con, ntype, ntitle, nwriter, ncontent);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}

	public Notice updateView(int rnum, int nno) {
		
		con = getConnection();
		
		Notice n = nDao.selectOne(con, rnum, nno);
		
		close(con);
		
		return n;
	}

	public int updateNotice(int nno, String ntitle, String ncontent) {

		con = getConnection();
		
		int result = nDao.updateNotice(con, nno, ntitle, ncontent);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}

	public int deleteNotice(int nno) {
		
		con = getConnection();
		
		int result = nDao.deleteNotice(con,nno);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}


}
