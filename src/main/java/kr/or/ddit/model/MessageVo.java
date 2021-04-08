package kr.or.ddit.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

public class MessageVo {
	private String mssageno   ;
	private int mssageno2   ;
	private String usid       ;
	private String mssagesj   ;
	private String mssagecn   ;
	private String mssagede   ;
	private int cnfirmat;
	private String re_usid       ;
	private int cntcn;
	
	
	public int getMssageno2() {
		return mssageno2;
	}
	public void setMssageno2(int mssageno2) {
		this.mssageno2 = mssageno2;
	}
	public int getCntcn() {
		return cntcn;
	}
	public void setCntcn(int cntcn) {
		this.cntcn = cntcn;
	}
	public String getRe_usid() {
		return re_usid;
	}
	public void setRe_usid(String re_usid) {
		this.re_usid = re_usid;
	}
	public int getCnfirmat() {
		return cnfirmat;
	}
	public void setCnfirmat(int cnfirmat) {
		this.cnfirmat = cnfirmat;
	}
	public String getMssageno() {
		return mssageno;
	}
	public void setMssageno(String mssageno) {
		this.mssageno = mssageno;
	}
	public String getUsid() {
		return usid;
	}
	public void setUsid(String usid) {
		this.usid = usid;
	}
	public String getMssagesj() {
		return mssagesj;
	}
	public void setMssagesj(String mssagesj) {
		this.mssagesj = mssagesj;
	}
	public String getMssagecn() {
		return mssagecn;
	}
	public void setMssagecn(String mssagecn) {
		this.mssagecn = mssagecn;
	}
	public String getMssagede() {
		return mssagede;
	}
	public void setMssagede(String mssagede) {
		this.mssagede = mssagede;
	}
	

	public MessageVo() {
	
	}
	@Override
	public String toString() {
		return "MessageVo [mssageno=" + mssageno + ", usid=" + usid + ", mssagesj=" + mssagesj + ", mssagecn="
				+ mssagecn + ", mssagede=" + mssagede + ", cnfirmat=" + cnfirmat + ", re_usid=" + re_usid + "]";
	}
	public MessageVo(String mssageno, String usid, String mssagesj, String mssagecn, String mssagede, int cnfirmat,
			String re_usid) {
		
		this.mssageno = mssageno;
		this.usid = usid;
		this.mssagesj = mssagesj;
		this.mssagecn = mssagecn;
		this.mssagede = mssagede;
		this.cnfirmat = cnfirmat;
		this.re_usid = re_usid;
	}

	
	
	
	
	
}
