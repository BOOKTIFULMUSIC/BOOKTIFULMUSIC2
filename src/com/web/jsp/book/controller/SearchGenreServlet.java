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
 * Servlet implementation class SearchGenreServlet
 */
@WebServlet("/bSearchGenre.bo")
public class SearchGenreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchGenreServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String genre = request.getParameter("keyword");
		System.out.println(genre);
		
				
		String gArr[] = genre.split(",");

		
		for(int i=0; i<gArr.length; i++) {
			System.out.println(gArr[i]);
		}
		System.out.println(gArr.length);
		
		ArrayList<Book> sList = new ArrayList<>();
		
		BookService bs = new BookService();
		
		int startPage;
		int endPage;
		int maxPage;
		int currentPage;
		int limit;
		int buttonCount = 5;
		currentPage = 1;
		limit = 12;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		int SearchlistCount = bs.getSearchListCount(gArr);
		System.out.println(SearchlistCount);
		
		maxPage = (int)((double)SearchlistCount/limit+1);
		startPage = ((int)((double)currentPage/buttonCount+1)-1)*buttonCount+1;
		endPage = startPage + buttonCount -1;
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		sList = bs.searchGenre(gArr,currentPage,limit);
		
		System.out.println("최종 :" + sList);
		
		String page = "";
		if(sList != null) {
			page = "views/book/bookGenre.jsp";
			request.setAttribute("genre", genre);
			request.setAttribute("sList", sList);
			endPage = startPage+buttonCount-1;
			PageInfo pi = new PageInfo(currentPage,SearchlistCount,limit,maxPage,startPage,endPage,buttonCount);
			request.setAttribute("pi", pi);
		}else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "장르 검색에 실패하였습니다.");
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
