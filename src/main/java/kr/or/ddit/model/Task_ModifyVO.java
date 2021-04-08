package kr.or.ddit.model;

import java.sql.Date;

public class Task_ModifyVO {

	private int jobno        ;  // 업무번호
	private Date jobupdde     ;  // 업무수정일
	private String updtcolumn   ;  // 수정컬럼
	private String bfchg        ;  // 변경전
	private String aftch        ;  // 변경후
	
	public int getJobno() {
		return jobno;
	}
	public void setJobno(int jobno) {
		this.jobno = jobno;
	}
	public Date getJobupdde() {
		return jobupdde;
	}
	public void setJobupdde(Date jobupdde) {
		this.jobupdde = jobupdde;
	}
	public String getUpdtcolumn() {
		return updtcolumn;
	}
	public void setUpdtcolumn(String updtcolumn) {
		this.updtcolumn = updtcolumn;
	}
	public String getBfchg() {
		return bfchg;
	}
	public void setBfchg(String bfchg) {
		this.bfchg = bfchg;
	}
	public String getAftch() {
		return aftch;
	}
	public void setAftch(String aftch) {
		this.aftch = aftch;
	}
	@Override
	public String toString() {
		return "Task_ModifyVO [jobno=" + jobno + ", jobupdde=" + jobupdde + ", updtcolumn=" + updtcolumn + ", bfchg="
				+ bfchg + ", aftch=" + aftch + "]";
	}
	
	
	
}
