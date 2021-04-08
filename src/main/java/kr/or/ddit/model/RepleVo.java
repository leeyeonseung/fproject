package kr.or.ddit.model;

import java.sql.Date;

public class RepleVo {

	private int answerno          ;   // 댓글번호
	private int jobno             ;   // 업무번호
	private String answerwrter       ;   // 댓글작성자
	private String answercn          ;   // 댓글내용
	private Date answerwritngde    ;   // 댓글작성날짜
	
	public int getAnswerno() {
		return answerno;
	}
	public void setAnswerno(int answerno) {
		this.answerno = answerno;
	}
	public int getJobno() {
		return jobno;
	}
	public void setJobno(int jobno) {
		this.jobno = jobno;
	}
	public String getAnswerwrter() {
		return answerwrter;
	}
	public void setAnswerwrter(String answerwrter) {
		this.answerwrter = answerwrter;
	}
	public String getAnswercn() {
		return answercn;
	}
	public void setAnswercn(String answercn) {
		this.answercn = answercn;
	}
	public Date getAnswerwritngde() {
		return answerwritngde;
	}
	public void setAnswerwritngde(Date answerwritngde) {
		this.answerwritngde = answerwritngde;
	}
	@Override
	public String toString() {
		return "RepleVo [answerno=" + answerno + ", jobno=" + jobno + ", answerwrter=" + answerwrter + ", answercn="
				+ answercn + ", answerwritngde=" + answerwritngde + "]";
	}
	
	
	
	
	
	
}
