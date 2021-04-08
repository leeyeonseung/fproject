package kr.or.ddit.model;

public class Task_usersVo {

	private int jobno        ; // 업무번호
	private String chargernm    ; // 담당자이름
	private String constntnm    ; // 구성원이름
	
	public int getJobno() {
		return jobno;
	}
	public void setJobno(int jobno) {
		this.jobno = jobno;
	}
	public String getChargernm() {
		return chargernm;
	}
	public void setChargernm(String chargernm) {
		this.chargernm = chargernm;
	}
	public String getConstntnm() {
		return constntnm;
	}
	public void setConstntnm(String constntnm) {
		this.constntnm = constntnm;
	}
	@Override
	public String toString() {
		return "Task_usersVo [jobno=" + jobno + ", chargernm=" + chargernm + ", constntnm=" + constntnm + "]";
	}
	
	
	
	
}
