package com.web.jsp.bestSellerList.model.service;

import static com.web.jsp.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.web.jsp.bestSellerList.model.dao.BestSellerDao;
import com.web.jsp.bestSellerList.model.vo.BestSeller;
import com.web.jsp.book.model.vo.Book;

public class BestSellerService {
	
	private Connection con;
	private BestSellerDao bestSellerDao = new BestSellerDao();
	
	public ArrayList<BestSeller> getBestSeller(){
		con = getConnection();
		ArrayList<BestSeller> bList = bestSellerDao.getBestSeller(con);
		close(con);
		return bList;
	}

	public int getListCount() {
		con = getConnection();
		int result = bestSellerDao.getListCount(con);
		close(con);
		return result;
	}

	public ArrayList<BestSeller> selectList(int currentPage, int limit) {
		con = getConnection();
		ArrayList<BestSeller> bList = bestSellerDao.selectList(con,currentPage,limit);
		close(con);
		return bList;
	}
}
