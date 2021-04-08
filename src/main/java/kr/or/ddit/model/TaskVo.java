package kr.or.ddit.model;

public class TaskVo {

	private String prjctno;
	private String jobno;
	private String jobnm;
	private String jobcn;
	private String jobpriort;
	
	private String jobsttus;
	private int prgsdo;
	private String jobrgsde;//등록일
	private String jobbgnde; //시작일
	private String jobclosde;//마감일
	
	private String upperjobno;
	private String jobwrter;
	private int mcount;
	private String manager;
	private String usid;
	
	public String getUsid() {
		return usid;
	}
	public void setUsid(String usid) {
		this.usid = usid;
	}
	public String getManager() {
		return manager== null?"":manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	public int getMcount() {
		if(mcount==-1) {
			mcount=0;
		}
		return mcount;
	}
	public void setMcount(int mcount) {
		this.mcount = mcount;
	}
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
	public String getJobpriort() {
		return jobpriort;
	}
	public void setJobpriort(String jobpriort) {
		this.jobpriort = jobpriort;
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

	public String getJobrgsde() {
		return jobrgsde;
	}
	public void setJobrgsde(String jobrgsde) {
		this.jobrgsde=jobrgsde.substring(0, 10);
	}
	
	public String getJobbgnde() {
		return jobbgnde;
	}
	public void setJobbgnde(String jobbgnde) {
		this.jobbgnde = jobbgnde.substring(0, 10);
	}
	public String getJobclosde() {
		return jobclosde == null? "-" : jobclosde;
	}
	public void setJobclosde(String jobclosde) {
		this.jobclosde = jobclosde.substring(0, 10);
	}
	public String getUpperjobno() {
		return upperjobno;
	}
	public void setUpperjobno(String upperjobno) {
		this.upperjobno = upperjobno;
	}
	public String getJobwrter() {
		return jobwrter;
	}
	public void setJobwrter(String jobwrter) {
		this.jobwrter = jobwrter;
	}
	

	@Override
	public String toString() {
		return "TaskVo [prjctno=" + prjctno + ", jobno=" + jobno + ", jobnm=" + jobnm + ", jobcn=" + jobcn
				+ ", jobpriort=" + jobpriort + ", jobsttus=" + jobsttus + ", prgsdo=" + prgsdo + ", jobrgsde="
				+ jobrgsde + ", jobbgnde=" + jobbgnde + ", jobclosde=" + jobclosde + ", upperjobno=" + upperjobno
				+ ", jobwrter=" + jobwrter + ", mcount=" + mcount + ", manager=" + manager + ", usid=" + usid + "]";
	}
	public TaskVo(String prjctno, String jobno, String jobnm, String jobcn, String jobpriort, String jobsttus,
			int prgsdo, String jobrgsde, String jobbgnde, String jobclosde, String upperjobno, String jobwrter, int mcount) {
		
		this.prjctno = prjctno;
		this.jobno = jobno;
		this.jobnm = jobnm;
		this.jobcn = jobcn;
		this.jobpriort = jobpriort;
		this.jobsttus = jobsttus;
		this.prgsdo = prgsdo;
		this.jobrgsde = jobrgsde;
		this.jobbgnde = jobbgnde;
		this.jobclosde = jobclosde;
		this.upperjobno = upperjobno;
		this.jobwrter = jobwrter;
		this.mcount = mcount;
	}
	public TaskVo() {
		
	}
	
	
	
	
	
	
}
