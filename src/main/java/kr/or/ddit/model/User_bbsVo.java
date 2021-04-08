package kr.or.ddit.model;

import java.sql.Date;

public class User_bbsVo {

	private int bbscttno  ;         // 게시글번호
	private String id        ;         // 아이디
	private String wrter     ;         // 작성자
	private String bbscttsj  ;         // 게시글제목
	private String bbscttcn  ;         // 게시글내용
	private Date bbscttde  ;         // 게시글날짜
	
	public int getBbscttno() {
		return bbscttno;
	}
	public void setBbscttno(int bbscttno) {
		this.bbscttno = bbscttno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getWrter() {
		return wrter;
	}
	public void setWrter(String wrter) {
		this.wrter = wrter;
	}
	public String getBbscttsj() {
		return bbscttsj;
	}
	public void setBbscttsj(String bbscttsj) {
		this.bbscttsj = bbscttsj;
	}
	public String getBbscttcn() {
		return bbscttcn;
	}
	public void setBbscttcn(String bbscttcn) {
		this.bbscttcn = bbscttcn;
	}
	public Date getBbscttde() {
		return bbscttde;
	}
	public void setBbscttde(Date bbscttde) {
		this.bbscttde = bbscttde;
	}
	@Override
	public String toString() {
		return "User_bbsVo [bbscttno=" + bbscttno + ", id=" + id + ", wrter=" + wrter + ", bbscttsj=" + bbscttsj
				+ ", bbscttcn=" + bbscttcn + ", bbscttde=" + bbscttde + "]";
	}
	
	
	
}
