package com.web.jsp.Music.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web.jsp.Music.model.service.MusicService;
import com.web.jsp.Music.model.vo.Music;

/**
 * Servlet implementation class SelectOneServlet
 */
@WebServlet("/mSelectOne.mo")
public class mSelectOneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public mSelectOneServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String title = request.getParameter("musicNm");
		System.out.println(title);
		
		MusicService ms = new MusicService();
		
		Music m = ms.selectOne(title);
		
		String page ="";
		
		if(m != null) {
			page = "views/music/MusicDetail.jsp";
			request.setAttribute("Music", m);
		}else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "음원정보 불러오기를 실패했습니다.");
		}
		
		request.getRequestDispatcher(page).forward(request, response);
		System.out.println(m);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
