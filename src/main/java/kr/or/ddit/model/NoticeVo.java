package kr.or.ddit.model;

import java.sql.Date;

public class NoticeVo {

	private String sntncno   ;     // 글번호
	private String prjctno   ;     // 프로젝트번호
	private String wrterid   ;     // 작성자아이디
	private String noticesj  ;     // 공지제목
	private String noticecn  ;     // 공지내용
	private Date writngde  ;     // 작성날짜
	
	
	public String getSntncno() {
		return sntncno;
	}
	public void setSntncno(String sntncno) {
		this.sntncno = sntncno;
	}
	public String getPrjctno() {
		return prjctno;
	}
	public void setPrjctno(String prjctno) {
		this.prjctno = prjctno;
	}
	public String getWrterid() {
		return wrterid;
	}
	public void setWrterid(String wrterid) {
		this.wrterid = wrterid;
	}
	public String getNoticesj() {
		return noticesj;
	}
	public void setNoticesj(String noticesj) {
		this.noticesj = noticesj;
	}
	public String getNoticecn() {
		return noticecn;
	}
	public void setNoticecn(String noticecn) {
		this.noticecn = noticecn;
	}
	public Date getWritngde() {
		return writngde;
	}
	public void setWritngde(Date writngde) {
		this.writngde = writngde;
	}
	@Override
	public String toString() {
		return "NoticeVo [sntncno=" + sntncno + ", prjctno=" + prjctno + ", wrterid=" + wrterid + ", noticesj="
				+ noticesj + ", noticecn=" + noticecn + ", writngde=" + writngde + "]";
	}
	public NoticeVo(String sntncno, String prjctno, String wrterid, String noticesj, String noticecn, Date writngde) {
		super();
		this.sntncno = sntncno;
		this.prjctno = prjctno;
		this.wrterid = wrterid;
		this.noticesj = noticesj;
		this.noticecn = noticecn;
		this.writngde = writngde;
	}
	public NoticeVo() {
	}
	
	
	
	
}
