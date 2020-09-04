package com.web.jsp.Review.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.jsp.Review.model.service.ReviewService;
import com.web.jsp.Review.model.vo.musicReview;

/**
 * Servlet implementation class ReviewInsertServlet
 */
@WebServlet("/mInsertReview.mo")
public class mReviewInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public mReviewInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int mRno = Integer.parseInt(request.getParameter("mRno"));
		String userId = request.getParameter("userId");
		int musicNo = Integer.parseInt(request.getParameter("musicNo"));
		String musicReview=request.getParameter("musicReview");
		 
		
		musicReview mr = new musicReview(userId, musicNo, musicReview);
		int result = new ReviewService().insertReview(mr);
		
		if(result > 0) {
			response.sendRedirect("selectOne.bo?bno="+musicNo);
		}else {
			request.setAttribute("msg", "댓글 작성 실패!");
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
