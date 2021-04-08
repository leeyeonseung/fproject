package kr.or.ddit.model;

public class Temporary_fileVo {

	private int fileno  ;          // 파일번호
	private int prjctno ;          // 프로젝트번호
	private int jobno   ;          // 업무번호
	private String filenm  ;          // 파일명
	private String flpth   ;          // 파일경로
	
	public int getFileno() {
		return fileno;
	}
	public void setFileno(int fileno) {
		this.fileno = fileno;
	}
	public int getPrjctno() {
		return prjctno;
	}
	public void setPrjctno(int prjctno) {
		this.prjctno = prjctno;
	}
	public int getJobno() {
		return jobno;
	}
	public void setJobno(int jobno) {
		this.jobno = jobno;
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
	@Override
	public String toString() {
		return "Temporary_fileVo [fileno=" + fileno + ", prjctno=" + prjctno + ", jobno=" + jobno + ", filenm=" + filenm
				+ ", flpth=" + flpth + "]";
	}
	
	
	
	
}
