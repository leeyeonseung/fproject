package kr.or.ddit.model;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

public class CalendarVo {

	private String fxno      ;
	private String prjctno   ;
	private String fxsj      ;
	private String fxcn      ;
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date fxbgnde   ;
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date fxendde   ;
	private String fxconstnt ;
	
	public String getFxno() {
		return fxno;
	}
	public void setFxno(String fxno) {
		this.fxno = fxno;
	}
	public String getPrjctno() {
		return prjctno;
	}
	public void setPrjctno(String prjctno) {
		this.prjctno = prjctno;
	}
	public String getFxsj() {
		return fxsj;
	}
	public void setFxsj(String fxsj) {
		this.fxsj = fxsj;
	}
	public String getFxcn() {
		return fxcn;
	}
	public void setFxcn(String fxcn) {
		this.fxcn = fxcn;
	}
	public Date getFxbgnde() {
		return fxbgnde;
	}
	public void setFxbgnde(Date fxbgnde) {
		this.fxbgnde = fxbgnde;
	}
	public Date getFxendde() {
		return fxendde;
	}
	public void setFxendde(Date fxendde) {
		this.fxendde = fxendde;
	}
	public String getFxconstnt() {
		return fxconstnt;
	}
	public void setFxconstnt(String fxconstnt) {
		this.fxconstnt = fxconstnt;
	}
	@Override
	public String toString() {
		return "CalendarVo [fxno=" + fxno + ", prjctno=" + prjctno + ", fxsj=" + fxsj + ", fxcn=" + fxcn + ", fxbgnde="
				+ fxbgnde + ", fxendde=" + fxendde + ", fxconstnt=" + fxconstnt + "]";
	}
	
	
	
	
	
	
}
