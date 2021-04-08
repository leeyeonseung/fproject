package kr.or.ddit.model;

import java.sql.Date;

public class AlarmVo {
	
	private int ntcnno   ;
	private int prjctno  ;
	private String ctgry    ;
	private String ntcnsj   ;
	private String ntcncn   ;
	private Date ntcntime ;
	private int cnfirmat ;
	public int getNtcnno() {
		return ntcnno;
	}
	public void setNtcnno(int ntcnno) {
		this.ntcnno = ntcnno;
	}
	public int getPrjctno() {
		return prjctno;
	}
	public void setPrjctno(int prjctno) {
		this.prjctno = prjctno;
	}
	public String getCtgry() {
		return ctgry;
	}
	public void setCtgry(String ctgry) {
		this.ctgry = ctgry;
	}
	public String getNtcnsj() {
		return ntcnsj;
	}
	public void setNtcnsj(String ntcnsj) {
		this.ntcnsj = ntcnsj;
	}
	public String getNtcncn() {
		return ntcncn;
	}
	public void setNtcncn(String ntcncn) {
		this.ntcncn = ntcncn;
	}
	public Date getNtcntime() {
		return ntcntime;
	}
	public void setNtcntime(Date ntcntime) {
		this.ntcntime = ntcntime;
	}
	public int getCnfirmat() {
		return cnfirmat;
	}
	public void setCnfirmat(int cnfirmat) {
		this.cnfirmat = cnfirmat;
	}
	@Override
	public String toString() {
		return "AlarmVo [ntcnno=" + ntcnno + ", prjctno=" + prjctno + ", ctgry=" + ctgry + ", ntcnsj=" + ntcnsj
				+ ", ntcncn=" + ntcncn + ", ntcntime=" + ntcntime + ", cnfirmat=" + cnfirmat + "]";
	}
	
	
	
}
