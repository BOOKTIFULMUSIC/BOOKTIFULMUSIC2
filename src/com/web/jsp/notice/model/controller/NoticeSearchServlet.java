package com.web.jsp.notice.model.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.jsp.book.model.vo.PageInfo;
import com.web.jsp.notice.model.service.NoticeService;
import com.web.jsp.notice.model.vo.Notice;

/**
 * Servlet implementation class NoticeSearchServlet
 */
@WebServlet("/nSearchNotice.no")
public class NoticeSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<Notice> list = new ArrayList<>();
		String category = request.getParameter("con");
		String keyword = request.getParameter("keyword");
		String ntype = request.getParameter("ntype");
		
		
		NoticeService ns = new NoticeService();

		// 페이징 처리
				int startPage;
				int endPage;
				int maxPage;
				int currentPage;
				int limit;
				
				// 처음 접속 시 페이지는 1페이지 부터 시작한다.
				currentPage = 1;
				// 글 개수 및 페이지 수 10개로 제한
				limit = 10;
				
				if(request.getParameter("currentPage") != null) {
					currentPage = Integer.parseInt(request.getParameter("currentPage"));
				}
				
				int listCount = ns.getSearchListCount(category, keyword, ntype);
				
				// 총 253개, 페이지 수--> 26개
				// 만약 전체 게시글 수가 13개
				// 페이지는 1,2
				maxPage = (int)((double)listCount/limit+0.9);
				
				// 시작 페이지와 마지막 페이지 계산
				// 1~10
				startPage = ((int)((double)currentPage/limit+0.9)-1)*limit+1;
				endPage = startPage + limit -1;
				
				if(endPage > maxPage) {
					endPage = maxPage;
				}
		
		list = ns.searchNotice(category, keyword, ntype, currentPage, limit);
		
		String page = "";
		
		if(!list.isEmpty()) {
			page = "views/notice/noticeList.jsp";
			request.setAttribute("list", list);
			PageInfo pi = new PageInfo(currentPage,listCount,limit,maxPage,startPage,endPage);
			request.setAttribute("pi", pi);
			request.setAttribute("con", category);
			request.setAttribute("keyword",keyword);
			request.setAttribute("ntype", ntype);
		}else{
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "검색 목록 불러오기 에러");
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
