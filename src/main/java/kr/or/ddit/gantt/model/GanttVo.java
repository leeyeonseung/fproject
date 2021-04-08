package kr.or.ddit.gantt.model;

public class GanttVo {
	private String prjctno;		// 프로젝트번호
	private String jobno; 		// 업무번호
	private String jobnm; 		// 업무이름
	private String jobcn; 		// 업무내용
	private String jobsttus; 	// 업무상태
	private String jobbgnde; 	// 업무시작일
	private String jobclosde; 	// 업무종료일
	private int prgsdo; 		// 업무진척도
	private String upperjobnm; 	// 상위업무이름
	
	public String getPrjctno() {
		return prjctno;
	}
	public void setPrjctno(String prjctno) {
		this.prjctno = prjctno;
	}
	public String getJobno() {
		return jobno;
	}
	public void setJobno(String jobno) {
		this.jobno = jobno;
	}
	public String getJobnm() {
		return jobnm;
	}
	public void setJobnm(String jobnm) {
		this.jobnm = jobnm;
	}
	public String getJobcn() {
		return jobcn;
	}
	public void setJobcn(String jobcn) {
		this.jobcn = jobcn;
	}
	public String getJobsttus() {
		return jobsttus;
	}
	public void setJobsttus(String jobsttus) {
		this.jobsttus = jobsttus;
	}
	public int getPrgsdo() {
		return prgsdo;
	}
	public void setPrgsdo(int prgsdo) {
		this.prgsdo = prgsdo;
	}
	public String getJobbgnde() {
		return jobbgnde;
	}
	public void setJobbgnde(String jobbgnde) {
		this.jobbgnde = jobbgnde;
	}
	public String getJobclosde() {
		return jobclosde;
	}
	public void setJobclosde(String jobclosde) {
		this.jobclosde = jobclosde;
	}
	public String getUpperjobnm() {
		return upperjobnm;
	}
	public void setUpperjobnm(String upperjobnm) {
		this.upperjobnm = upperjobnm;
	}
	
	@Override
	public String toString() {
		return "GanttVo [prjctno=" + prjctno + ", jobno=" + jobno + ", jobnm=" + jobnm + ", jobcn=" + jobcn
				+ ", jobsttus=" + jobsttus + ", prgsdo=" + prgsdo + ", jobbgnde=" + jobbgnde + ", jobclosde="
				+ jobclosde + ", upperjobnm=" + upperjobnm + "]";
	}
}
