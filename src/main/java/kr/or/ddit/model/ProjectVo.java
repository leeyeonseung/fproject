package kr.or.ddit.model;

import java.util.Date;

public class ProjectVo {

	private String prjctno;         //프로젝트번호
	private Date prjctcreatde;    //프로젝트생성날짜
	private String prjctsttus;      //프로젝트상태
	private String prjctnm;         //프로젝트이름
	private String prjctcn;         //프로젝트내용
	private int prjctty;            //프로젝트유형
	private int bkmkat;             //즐겨찾기여부
	private int snwrtatr;           //글작성권한
	private int filedownatr;        //파일다운로드권한
	
	private int membercnt;
	
	
	public int getMembercnt() {
		return membercnt;
	}
	public void setMembercnt(int membercnt) {
		this.membercnt = membercnt;
	}
	public String getPrjctno() {
		return prjctno;
	}
	public void setPrjctno(String prjctno) {
		this.prjctno = prjctno;
	}
	public Date getPrjctcreatde() {
		return prjctcreatde;
	}
	public void setPrjctcreatde(Date prjctcreatde) {
		this.prjctcreatde = prjctcreatde;
	}
	public String getPrjctsttus() {
		return prjctsttus;
	}
	public void setPrjctsttus(String prjctsttus) {
		this.prjctsttus = prjctsttus;
	}
	public String getPrjctnm() {
		return prjctnm;
	}
	public void setPrjctnm(String prjctnm) {
		this.prjctnm = prjctnm;
	}
	public String getPrjctcn() {
		return prjctcn;
	}
	public void setPrjctcn(String prjctcn) {
		this.prjctcn = prjctcn;
	}
	public int getPrjctty() {
		return prjctty;
	}
	public void setPrjctty(int prjctty) {
		this.prjctty = prjctty;
	}
	public int getBkmkat() {
		return bkmkat;
	}
	public void setBkmkat(int bkmkat) {
		this.bkmkat = bkmkat;
	}
	public int getSnwrtatr() {
		return snwrtatr;
	}
	public void setSnwrtatr(int snwrtatr) {
		this.snwrtatr = snwrtatr;
	}
	public int getFiledownatr() {
		return filedownatr;
	}
	public void setFiledownatr(int filedownatr) {
		this.filedownatr = filedownatr;
	}
	@Override
	public String toString() {
		return "ProjectVo [prjctno=" + prjctno + ", prjctcreatde=" + prjctcreatde + ", prjctsttus=" + prjctsttus
				+ ", prjctnm=" + prjctnm + ", prjctcn=" + prjctcn + ", prjctty=" + prjctty + ", bkmkat=" + bkmkat
				+ ", snwrtatr=" + snwrtatr + ", filedownatr=" + filedownatr + ", membercnt=" + membercnt + "]";
	}
	public ProjectVo() {
		
	}
	public ProjectVo(String prjctno, Date prjctcreatde, String prjctsttus, String prjctnm, String prjctcn,
			int prjctty, int bkmkat, int snwrtatr, int filedownatr) {
		super();
		this.prjctno = prjctno;
		this.prjctcreatde = prjctcreatde;
		this.prjctsttus = prjctsttus;
		this.prjctnm = prjctnm;
		this.prjctcn = prjctcn;
		this.prjctty = prjctty;
		this.bkmkat = bkmkat;
		this.snwrtatr = snwrtatr;
		this.filedownatr = filedownatr;
	}
}
