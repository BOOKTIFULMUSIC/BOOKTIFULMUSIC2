package com.web.jsp.Music.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.jsp.Music.model.service.MusicService;
import com.web.jsp.Music.model.vo.Music;
import com.web.jsp.book.model.vo.PageInfo;

/**
 * Servlet implementation class mGenreServlet
 */
@WebServlet("/mGenreList.mo")
public class mGenreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public mGenreServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 검색 list
		ArrayList<Music> list = null;
		MusicService ms = new MusicService();
		
		int startPage;
		int endPage;
		int maxPage;
		int currentPage;
		int limit;
		int buttonCount =5;
		currentPage = 1;
		limit = 12;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		int listCount = ms.getListCount();
		
		maxPage = (int)((double)listCount/limit+1);
		
		startPage = ((int)((double)currentPage/buttonCount+1)-1)*buttonCount+1;
		
		endPage = startPage + buttonCount -1;
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		list = ms.selectList(currentPage,limit);
		
		String page="";
		if(list!=null) {
			page = "views/music/musicGenre.jsp";
			request.setAttribute("list", list);
			
			endPage = startPage+buttonCount-1;
			PageInfo pi = new PageInfo(currentPage,listCount,limit,maxPage,startPage,endPage,buttonCount);
			request.setAttribute("pi", pi);
		} else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "음악 장르 목록 조회에 실패하였습니다.");
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
