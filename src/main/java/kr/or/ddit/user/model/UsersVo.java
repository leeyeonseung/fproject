package kr.or.ddit.user.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class UsersVo {

	private String usid;	
	private String usernm;
	private String password;
	private String telno;
	private String email;	
	private String proflphoto;
	private String cmpnynm;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date brthdy;
	
	public UsersVo() {}
	
	public UsersVo(String usid, String usernm, String password, Date brthdy, String telno, 
				String email, String proflphoto, String cmpnynm) {
		setUsid(usid);
		setUsernm(usernm);
		setPassword(password);
		setBrthdy(brthdy);
		setTelno(telno);
		setEmail(email);
		setProflphoto(proflphoto);
		setCmpnynm(cmpnynm);
	}

	public String getUsid() {
		return usid;
	}

	public void setUsid(String usid) {
		this.usid = usid;
	}

	public String getUsernm() {
		return usernm;
	}

	public void setUsernm(String usernm) {
		this.usernm = usernm;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getTelno() {
		return telno;
	}

	public void setTelno(String telno) {
		this.telno = telno;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getProflphoto() {
		return proflphoto;
	}

	public void setProflphoto(String proflphoto) {
		this.proflphoto = proflphoto;
	}

	public String getCmpnynm() {
		return cmpnynm;
	}

	public void setCmpnynm(String cmpnynm) {
		this.cmpnynm = cmpnynm;
	}

	public Date getBrthdy() {
		return brthdy;
	}

	public void setBrthdy(Date brthdy) {
		this.brthdy = brthdy;
	}

	@Override
	public String toString() {
		return "UsersVo [usid=" + usid + ", usernm=" + usernm + ", password=" + password + ", telno=" + telno
				+ ", email=" + email + ", proflphoto=" + proflphoto + ", cmpnynm=" + cmpnynm + ", brthdy=" + brthdy
				+ "]";
	}
	
	
}
