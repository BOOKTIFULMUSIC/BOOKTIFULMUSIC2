package com.web.jsp.Member.model.service;

import static com.web.jsp.common.JDBCTemplate.close;
import static com.web.jsp.common.JDBCTemplate.commit;
import static com.web.jsp.common.JDBCTemplate.getConnection;
import static com.web.jsp.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.web.jsp.Member.exception.MemberException;
import com.web.jsp.Member.model.dao.MemberDao;
import com.web.jsp.Member.model.vo.Member;
import com.web.jsp.Member.model.vo.PopListB;
import com.web.jsp.Member.model.vo.PopListM;

public class MemberService {
	private Connection con;
	private MemberDao mDao = new MemberDao();
	
	public int insertMember(Member m) throws MemberException {
		con = getConnection();
		
		int result = mDao.insertMember(con, m);
		if(result > 0) commit(con);
		else rollback(con);
		close(con);
		return result;
	}

	public int idDupCheck(String userId) {
		con = getConnection();
		int result = mDao.idDupCheck(con, userId);
		close(con);
		return result;
	}

	public Member selectMember(Member m) throws MemberException {
		con = getConnection();
		Member mem = mDao.selectMember(con, m);
		
		close(con);
		
		if(mem == null) {
			throw new MemberException("회원 아이디나 비밀번호가 올바르지 않습니다.");
		}
		return mem;
	}

	public ArrayList<PopListB> selectBook(String id) {
		con = getConnection();
		ArrayList<PopListB> pb = mDao.selectListB(con,id);
		close(con);
		
		
		return pb;
	}

	public ArrayList<PopListM> selectMusic(String id) {

		con = getConnection();
		ArrayList<PopListM> pm = mDao.selectListM(con,id);
		close(con);
		
		return pm;
	}

	public int insertBgenre(String id) {
		con = getConnection();
		
		int result = mDao.insertBgenre(con, id);
		if(result > 0) commit(con);
		else rollback(con);
		close(con);
		return result;
		
	}

	public int insertMgenre(String id) {
		con = getConnection();
		
		int result = mDao.insertMgenre(con, id);
		if(result > 0) commit(con);
		else rollback(con);
		close(con);
		return result;
		
	}

	public int deleteBgenre(String id, String[] bgenre) {
		con = getConnection();

		int result = mDao.deleteBgenre(con, id, bgenre);
		if(result > 0) commit(con);
		else rollback(con);
		close(con);


		return result;
	}

	public int deleteMgenre(String id, String[] mgenre) {
		con = getConnection();

		int result = mDao.deleteMgenre(con, id, mgenre);
		if(result > 0) commit(con);
		else rollback(con);
		close(con);

		return result;
	}

}







