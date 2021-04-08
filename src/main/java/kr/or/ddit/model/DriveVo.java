package kr.or.ddit.model;

import java.sql.Date;

public class DriveVo {

	private String fileno		;     //파일번호
	private String prjctno      ;    //프로젝트번호
	private String filenm       ;    //파일명
	private String flpth        ;    //파일경로
	private String filety       ;    //파일유형
	private int deleteat     	;    	//삭제여부
	private String upperfileno  ;    //상위파일번호
	private String rfilenm; //저장되는 파일명
	
	
	public String getFileno() {
		return fileno;
	}
	public void setFileno(String fileno) {
		this.fileno = fileno;
	}
	public String getPrjctno() {
		return prjctno;
	}
	public void setPrjctno(String prjctno) {
		this.prjctno = prjctno;
	}
	public String getFilenm() {
		return filenm;
	}
	public void setFilenm(String filenm) {
		this.filenm = filenm;
	}
	public String getFlpth() {
		return flpth;
	}
	public void setFlpth(String flpth) {
		this.flpth = flpth;
	}
	public String getFilety() {
		return filety;
	}
	public void setFilety(String filety) {
		this.filety = filety;
	}
	public int getDeleteat() {
		return deleteat;
	}
	public void setDeleteat(int deleteat) {
		this.deleteat = deleteat;
	}
	public String getUpperfileno() {
		return upperfileno;
	}
	public void setUpperfileno(String upperfileno) {
		this.upperfileno = upperfileno;
	}
	public String getRfilenm() {
		return rfilenm;
	}
	public void setRfilenm(String rfilenm) {
		this.rfilenm = rfilenm;
	}
	@Override
	public String toString() {
		return "DriveVo [fileno=" + fileno + ", prjctno=" + prjctno + ", filenm=" + filenm + ", flpth=" + flpth
				+ ", filety=" + filety + ", deleteat=" + deleteat + ", upperfileno=" + upperfileno + ", rfilenm="
				+ rfilenm + "]";
	}
	
	
}
