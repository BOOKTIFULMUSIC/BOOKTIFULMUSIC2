package com.web.jsp.Member.model.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

/**
 * Servlet implementation class InsertGenre
 */
@WebServlet("/popInsert.mo")
public class InsertGenre extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertGenre() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("userId");
		MemberService ms = new MemberService();
		String[] bgenre = request.getParameterValues("bgenre");
		String[] mgenre = request.getParameterValues("mgenre");
		System.out.println(id);

		for(int i=0; i<bgenre.length;i++) {
			System.out.println(bgenre[i]);
		}
		for(int i=0; i<mgenre.length;i++) {
			System.out.println(mgenre[i]);
		}
		
		
		try {
			ms.insertBgenre(id);
			ms.insertMgenre(id);
			System.out.println("서블릿까지 돌아오기 성공1");

		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		try {
			ms.deleteBgenre(id,bgenre);
			ms.deleteMgenre(id,mgenre);
			System.out.println("서블릿까지 돌아오기 성공2");
			response.setContentType("text/html; charset=euc-kr"); //한글이 인코딩
			PrintWriter out = response.getWriter(); //선언

			String str="";
			str = "<script language='javascript'>";
			str += "opener.window.location.reload();";  //오프너 새로고침
			str += "self.close();";   // 창닫기
			str += "</script>";
			out.print(str);
		}catch(Exception e) {
			e.printStackTrace();
		}

		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
