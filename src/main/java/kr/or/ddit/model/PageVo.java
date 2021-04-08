package kr.or.ddit.model;

public class PageVo {
	private int page;
	private int pageSize;
	private String usid;
	private String re_usid;
	private String prjctno;
	

	public String getPrjctno() {
		return prjctno;
	}

	public void setPrjctno(String prjctno) {
		this.prjctno = prjctno;
	}

	public String getRe_usid() {
		return re_usid;
	}

	public void setRe_usid(String re_usid) {
		this.re_usid = re_usid;
	}

	public String getUsid() {
		return usid;
	}

	public void setUsid(String usid) {
		this.usid = usid;
	}

	public PageVo() {}
	
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public PageVo(int page, int pageSize, String usid, String re_usid, String prjctno) {
		super();
		this.page = page;
		this.pageSize = pageSize;
		this.usid = usid;
		this.re_usid = re_usid;
		this.prjctno = prjctno;
	}

	@Override
	public String toString() {
		return "PageVo [page=" + page + ", pageSize=" + pageSize + ", usid=" + usid + ", re_usid=" + re_usid
				+ ", prjctno=" + prjctno + "]";
	}
	
}
