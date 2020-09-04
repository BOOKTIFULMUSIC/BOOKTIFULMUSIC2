package com.web.jsp.book.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.jsp.book.model.service.BookService;
import com.web.jsp.book.model.vo.Book;
import com.web.jsp.book.model.vo.PageInfo;

/**
 * Servlet implementation class bLikeListServlet
 */
@WebServlet("/bLikeList.bo")
public class bLikeListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bLikeListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Book> list = null;
		BookService bs = new BookService();
		
		int startPage;
		int endPage;
		int maxPage;
		int currentPage;
		int limit;
		currentPage = 1;
		int buttonCount = 5;
		limit = 10;
		
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
		
		list = bs.LikeList(currentPage,limit);
		
		String page="";
		if(list!=null) {
			page = "views/book/bookLike.jsp";
			request.setAttribute("list", list);
			
			endPage = startPage+buttonCount-1;
			PageInfo pi = new PageInfo(currentPage,listCount,limit,maxPage,startPage,endPage,buttonCount);
			request.setAttribute("pi", pi);
		} else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "좋아요순 목록 조회에 실패하였습니다.");
		}
		request.getRequestDispatcher(page).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
