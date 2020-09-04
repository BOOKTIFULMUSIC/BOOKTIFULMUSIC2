package com.web.jsp.notice.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Notice implements Serializable{


	private static final long serialVersionUID = -9010856112129664199L;
	
	private int rnum;

	private int nno;
	private String ntype;
	private String ntitle;
	private String nwriter;
	private String ncontent;
	private Date ndate;
	
	public Notice() {}

	public Notice(int rnum, int nno, String ntype, String ntitle, String nwriter, String ncontent, Date ndate) {
		super();
		this.rnum = rnum;
		this.nno = nno;
		this.ntype = ntype;
		this.ntitle = ntitle;
		this.nwriter = nwriter;
		this.ncontent = ncontent;
		this.ndate = ndate;
	}

	public int getRnum() {
		return rnum;
	}
	
	public void setRnum(int rnum) {
		this.rnum = rnum;
	}
	
	public int getNno() {
		return nno;
	}

	public void setNno(int nno) {
		this.nno = nno;
	}

	public String getNtype() {
		return ntype;
	}

	public void setNtype(String ntype) {
		this.ntype = ntype;
	}

	public String getNtitle() {
		return ntitle;
	}

	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}

	public String getNwriter() {
		return nwriter;
	}

	public void setNwriter(String nwriter) {
		this.nwriter = nwriter;
	}

	public String getNcontent() {
		return ncontent;
	}

	public void setNcontent(String ncontent) {
		this.ncontent = ncontent;
	}

	public Date getNdate() {
		return ndate;
	}

	public void setNdate(Date ndate) {
		this.ndate = ndate;
	}

	@Override
	public String toString() {
		return "rnum=" + rnum + "nno=" + nno + ", ntype=" + ntype + ", ntitle=" + ntitle + ", nwriter=" + nwriter + ", ncontent="
				+ ncontent + ", ndate=" + ndate;
	}
	
	
	

}
