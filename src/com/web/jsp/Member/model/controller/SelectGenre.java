package com.web.jsp.Member.model.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web.jsp.Member.model.service.MemberService;
import com.web.jsp.Member.model.vo.Member;
import com.web.jsp.Member.model.vo.PopListB;
import com.web.jsp.Member.model.vo.PopListM;

/**
 * Servlet implementation class PopSelectIn
 */
@WebServlet("/mSelectGenre.me")
public class SelectGenre extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectGenre() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("userId");
		MemberService ms = new MemberService();
		
		ArrayList<PopListB> pb = ms.selectBook(id);
		ArrayList<PopListM> pm = ms.selectMusic(id);
		
		request.setAttribute("popListB", pb);
		request.setAttribute("popListM", pm);
		request.getRequestDispatcher("views/member/pop_genre_select.jsp").forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
