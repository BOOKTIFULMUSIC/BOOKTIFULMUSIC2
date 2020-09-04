package com.web.jsp.Review.model.service;

import static com.web.jsp.common.JDBCTemplate.close;
import static com.web.jsp.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.web.jsp.Review.model.dao.ReviewDao;
import com.web.jsp.Review.model.vo.musicReview;

public class ReviewService {
	
	private ReviewDao rDao = new ReviewDao();
	
	public ArrayList<musicReview> selectList(int musicNo) {
		Connection con = getConnection();
		ArrayList<musicReview> mlist = 
				rDao.selectList(con, musicNo);
		close(con);
		return mlist;
	}
	

	public int insertReview(musicReview mr) {
		
		Connection con = getConnection();
		int result = rDao.insertReview(con,mr);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		return result;
	}

}
