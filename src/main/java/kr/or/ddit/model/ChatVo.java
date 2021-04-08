package kr.or.ddit.model;

public class ChatVo {

	private String prjctno;    //프로젝트번호
	private String chttcn;     //채팅내용
	private String chtde;      //채팅날짜
	private String usid;       //유저아이디
	
	public String getPrjctno() {
		return prjctno;
	}
	public void setPrjctno(String prjctno) {
		this.prjctno = prjctno;
	}
	public String getChttcn() {
		return chttcn;
	}
	public void setChttcn(String chttcn) {
		this.chttcn = chttcn;
	}
	public String getChtde() {
		return chtde;
	}
	public void setChtde(String chtde) {
		this.chtde = chtde;
	}
	public String getUsid() {
		return usid;
	}
	public void setUsid(String usid) {
		this.usid = usid;
	}
	@Override
	public String toString() {
		return "ChatVo [prjctno=" + prjctno + ", chttcn=" + chttcn + ", chtde=" + chtde + ", usid=" + usid + "]";
	}
	
}
