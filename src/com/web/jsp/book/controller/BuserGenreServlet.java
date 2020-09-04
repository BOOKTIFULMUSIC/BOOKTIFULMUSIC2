package com.web.jsp.book.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.web.jsp.book.model.service.BookService;
import com.web.jsp.book.model.vo.Book;
import com.web.jsp.book.model.vo.PageInfo;

/**
 * Servlet implementation class BuserGenreServlet
 */
@WebServlet("/bUserGenre.bo")
public class BuserGenreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuserGenreServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = request.getParameter("userId");
		System.out.println(userId);
		
		BookService bs = new BookService();
		
		int startPage;
		int endPage;
		int maxPage;
		int currentPage;
		int limit;
		currentPage = 1;
		int buttonCount = 5;
		limit = 12;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		int listCount = bs.getListCount();
		
		maxPage = (int)((double)listCount/limit+1);
		startPage = ((int)((double)currentPage/buttonCount+1)-1)*buttonCount+1;
		endPage = startPage + buttonCount -1;
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		ArrayList<Book> ubList = bs.userGenre(userId,currentPage,limit);
		

		System.out.println(ubList);
		
		
		String page = "";
		if(ubList != null) {
			page = "views/book/bookGenre.jsp";
			request.setAttribute("ubList", ubList);
			endPage = startPage+buttonCount-1;
			PageInfo pi = new PageInfo(currentPage,listCount,limit,maxPage,startPage,endPage,buttonCount);
			request.setAttribute("pi", pi);
		}else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "회원님이 선택한 장르 리스트 조회에 실패하였습니다.");
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
