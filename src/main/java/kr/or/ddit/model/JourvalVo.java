package kr.or.ddit.model;

import java.sql.Date;

public class JourvalVo {

	private int diaryno     ;  // 일지번호
	private int jobno       ;  // 업무번호
	private Date diaryde     ;  // 일지날짜
	private String diarywrter  ;  // 일지작성자
	private String diarycn     ;  // 일지내용
	private int cnfirmat    ;  // 확인여부
	
	public int getDiaryno() {
		return diaryno;
	}
	public void setDiaryno(int diaryno) {
		this.diaryno = diaryno;
	}
	public int getJobno() {
		return jobno;
	}
	public void setJobno(int jobno) {
		this.jobno = jobno;
	}
	public Date getDiaryde() {
		return diaryde;
	}
	public void setDiaryde(Date diaryde) {
		this.diaryde = diaryde;
	}
	public String getDiarywrter() {
		return diarywrter;
	}
	public void setDiarywrter(String diarywrter) {
		this.diarywrter = diarywrter;
	}
	public String getDiarycn() {
		return diarycn;
	}
	public void setDiarycn(String diarycn) {
		this.diarycn = diarycn;
	}
	public int getCnfirmat() {
		return cnfirmat;
	}
	public void setCnfirmat(int cnfirmat) {
		this.cnfirmat = cnfirmat;
	}
	@Override
	public String toString() {
		return "JourvalVo [diaryno=" + diaryno + ", jobno=" + jobno + ", diaryde=" + diaryde + ", diarywrter="
				+ diarywrter + ", diarycn=" + diarycn + ", cnfirmat=" + cnfirmat + "]";
	}
	
	
}
