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

/**
 * Servlet implementation class MusicChart
 */
@WebServlet("/mTop100.mo")
public class TopChartListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TopChartListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Music> list = new ArrayList<>();
		MusicService ms = new MusicService();
		
		list = ms.musicChart();
		
		String page = "";
		
		if(list != null) {
			page = "views/music/topChart.jsp";
			request.setAttribute("list" , list);
		}else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("mag", "음원차트 불러오기를 실패했습니다");
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
