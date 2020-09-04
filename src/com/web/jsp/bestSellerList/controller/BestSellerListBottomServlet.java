package com.web.jsp.bestSellerList.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.web.jsp.bestSellerList.model.service.BestSellerService;
import com.web.jsp.bestSellerList.model.vo.BestSeller;
import com.web.jsp.book.model.vo.PageInfo;

/**
 * Servlet implementation class BestSellerListServletBottom
 */
@WebServlet("/bTop21.bo")
public class BestSellerListBottomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BestSellerListBottomServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json; charset=UTF-8");
		ArrayList<BestSeller> list = null;
		BestSellerService bs = new BestSellerService();
		HashMap<String,Object> resultMap = null;
		int startPage;
		int endPage;
		int maxPage;
		int currentPage;
		int limit;
		currentPage = 1;
		int buttonCount = 5;
		limit = 21;

		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		int listCount = bs.getListCount();

		maxPage = (int)((double)listCount/limit+0.9);
		startPage = ((int)((double)currentPage/buttonCount+0.9)-1)*buttonCount+1;
		endPage = startPage + buttonCount -1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}

		list = bs.selectList(currentPage,limit);

		String page="";
		if(list!=null) {

			endPage = startPage+limit-1;
			PageInfo pi = new PageInfo(currentPage,listCount,limit,maxPage,startPage,endPage,buttonCount);
			resultMap = new HashMap<String,Object>();
			resultMap.put("pi", pi);
			resultMap.put("list", list);
		} else {
		}
		
		new Gson().toJson(resultMap, response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
