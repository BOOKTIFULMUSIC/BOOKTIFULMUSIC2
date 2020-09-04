package com.web.jsp.Member.model.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.jsp.Member.model.service.MemberService;

/**
 * Servlet implementation class Shoppingbasket
 */
@WebServlet("/basket.me")
public class BookBasket extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookBasket() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		ArrayList list = new ArrayList();
		MemberService ms = new MemberService();
		int orderNo = Integer.parseInt(request.getParameter("orderNo"));
		String bTitle = request.getParameter("bTitle");
		int bNo = Integer.parseInt(request.getParameter("bNo"));
		int price = Integer.parseInt(request.getParameter("bPrice"));
		String bImage = request.getParameter("bImage");
		String userId = request.getParameter("userId");
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
