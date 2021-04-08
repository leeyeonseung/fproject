package kr.or.ddit.model;

public class CompanyVo {

	private int deptno     ;			// 부서번호
	private String dept       ;         // 부서
	private String rspofc     ;         // 직책
	private int upperdeptno;            // 상위부서번호
	
	
	public CompanyVo() {}
	
	public CompanyVo(int deptno, String dept, String rspofc, int upperdeptno) {
		setDeptno(deptno);
		setDept(dept);
		setRspofc(rspofc);
		setUpperdeptno(upperdeptno);
	}
	
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getRspofc() {
		return rspofc;
	}
	public void setRspofc(String rspofc) {
		this.rspofc = rspofc;
	}
	public int getUpperdeptno() {
		return upperdeptno;
	}
	public void setUpperdeptno(int upperdeptno) {
		this.upperdeptno = upperdeptno;
	}
	@Override
	public String toString() {
		return "CompanyVo [deptno=" + deptno + ", dept=" + dept + ", rspofc=" + rspofc + ", upperdeptno=" + upperdeptno
				+ "]";
	}
	
	
}
