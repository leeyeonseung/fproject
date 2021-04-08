package kr.or.ddit.model;

public class ApprovalVo {

	private int docno   ;
	private int jobno   ;
	private String wrter   ;
	private String docsj   ;
	private String doccn   ;
	private String atchmnfl;
	
	public int getDocno() {
		return docno;
	}
	public void setDocno(int docno) {
		this.docno = docno;
	}
	public int getJobno() {
		return jobno;
	}
	public void setJobno(int jobno) {
		this.jobno = jobno;
	}
	public String getWrter() {
		return wrter;
	}
	public void setWrter(String wrter) {
		this.wrter = wrter;
	}
	public String getDocsj() {
		return docsj;
	}
	public void setDocsj(String docsj) {
		this.docsj = docsj;
	}
	public String getDoccn() {
		return doccn;
	}
	public void setDoccn(String doccn) {
		this.doccn = doccn;
	}
	public String getAtchmnfl() {
		return atchmnfl;
	}
	public void setAtchmnfl(String atchmnfl) {
		this.atchmnfl = atchmnfl;
	}
	@Override
	public String toString() {
		return "ApprovalVo [docno=" + docno + ", jobno=" + jobno + ", wrter=" + wrter + ", docsj=" + docsj + ", doccn="
				+ doccn + ", atchmnfl=" + atchmnfl + "]";
	}
	
	
	
	
	
}
