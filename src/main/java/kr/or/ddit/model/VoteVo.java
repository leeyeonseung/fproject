package kr.or.ddit.model;

import java.util.Date;

public class VoteVo {

	private String realvoteno;
	private String voteno;
	private String prjctno;

	private Date votede;
	private String voteendde;
	private String votethema;
	private String usid;
	private int voteone;
	
	
	private String votelist;
	private int votelistno;
	private int clostt;
	private int novote;
	private String etcopinion;

	
	public String getEtcopinion() {
		return etcopinion;
	}

	public void setEtcopinion(String etcopinion) {
		this.etcopinion = etcopinion;
	}

	public int getVoteone() {
		return voteone;
	}

	public void setVoteone(int voteone) {
		this.voteone = voteone;
	}

	public String getUsid() {
		return usid;
	}

	public void setUsid(String usid) {
		this.usid = usid;
	}

	public String getRealvoteno() {
		return realvoteno;
	}

	public void setRealvoteno(String realvoteno) {
		this.realvoteno = realvoteno;
	}

	public int getNovote() {
		return novote;
	}

	public void setNovote(int novote) {
		this.novote = novote;
	}

	public int getClostt() {
		return clostt;
	}

	public void setClostt(int clostt) {
		this.clostt = clostt;
	}

	public String getVotethema() {
		return votethema;
	}

	public void setVotethema(String votethema) {
		this.votethema = votethema;
	}

	public String getVoteno() {
		return voteno;
	}

	public void setVoteno(String voteno) {
		this.voteno = voteno;
	}

	public String getPrjctno() {
		return prjctno;
	}

	public void setPrjctno(String prjctno) {
		this.prjctno = prjctno;
	}

	public Date getVotede() {
		return votede;
	}

	public void setVotede(Date votede) {
		this.votede = votede;
	}

	public String getVoteendde() {
		return voteendde;
	}

	public void setVoteendde(String voteendde) {
		this.voteendde = voteendde;
	}

	public String getVotelist() {
		return votelist;
	}

	public void setVotelist(String votelist) {
		this.votelist = votelist;
	}

	public int getVotelistno() {
		return votelistno;
	}

	public void setVotelistno(int votelistno) {
		this.votelistno = votelistno;
	}

	public VoteVo(String realvoteno, String voteno, String prjctno, Date votede, String voteendde, String votethema,
			String usid, int voteone, String votelist, int votelistno, int clostt, int novote) {
		super();
		this.realvoteno = realvoteno;
		this.voteno = voteno;
		this.prjctno = prjctno;
		this.votede = votede;
		this.voteendde = voteendde;
		this.votethema = votethema;
		this.usid = usid;
		this.voteone = voteone;
		this.votelist = votelist;
		this.votelistno = votelistno;
		this.clostt = clostt;
		this.novote = novote;
	}

	@Override
	public String toString() {
		return "VoteVo [realvoteno=" + realvoteno + ", voteno=" + voteno + ", prjctno=" + prjctno + ", votede=" + votede
				+ ", voteendde=" + voteendde + ", votethema=" + votethema + ", usid=" + usid + ", voteone=" + voteone
				+ ", votelist=" + votelist + ", votelistno=" + votelistno + ", clostt=" + clostt + ", novote=" + novote
				+ "]";
	}

	public VoteVo() {

	}

}
