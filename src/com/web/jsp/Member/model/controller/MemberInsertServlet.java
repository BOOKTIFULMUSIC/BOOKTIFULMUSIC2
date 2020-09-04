package com.web.jsp.Member.model.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.jsp.Member.model.service.MemberService;
import com.web.jsp.Member.model.vo.Member;
import com.web.jsp.Member.exception.MemberException;

/**
 * Servlet implementation class MemberInsertServlet
 */
@WebServlet("/mInsert.me")
public class MemberInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("name");
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userpwd");
		String email = request.getParameter("email");
		String phone = request.getParameter("tel1") +
				       request.getParameter("tel2");
		String birth = request.getParameter("birth");
		String gender = request.getParameter("gender");
		String address = request.getParameter("zipCode")+", "
			       + request.getParameter("detail_address")+", "
			       + request.getParameter("detail_address2");
		
		Date birthDate = null;
		if(birth != "" && birth != null) {
			String[] dateArr = birth.split("-");
			int[] intArr = new int[dateArr.length];
			
			for(int i = 0; i<dateArr.length; i++) {
				intArr[i] = Integer.parseInt(dateArr[i]);
			}
			
			birthDate = new Date(new GregorianCalendar(intArr[0], intArr[1]-1, intArr[2]).getTimeInMillis());
		}else {
			birthDate = new Date(new GregorianCalendar().getTimeInMillis());
		}
		
		Member m = new Member(userName,userId,userPwd,email,phone,birthDate,gender,address);
		
		MemberService ms = new MemberService();
		
		try {
			ms.insertMember(m);
			response.sendRedirect("index.jsp");
		}catch(MemberException e) {
			request.setAttribute("msg", "회원가입 중 에러가 발생하였습니다.");
			request.setAttribute("exception", e);
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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
