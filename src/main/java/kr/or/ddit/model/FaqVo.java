package kr.or.ddit.model;

public class FaqVo {

	private  int bbsno			; // 게시판번호
	private String  qestn    ; // 질문
	private String  answer   ; // 답변
	private  int qestnno        ; // 질문번호
	
	public int getBbsno() {
		return bbsno;
	}
	public void setBbsno(int bbsno) {
		this.bbsno = bbsno;
	}
	public String getQestn() {
		return qestn;
	}
	public void setQestn(String qestn) {
		this.qestn = qestn;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public int getQestnno() {
		return qestnno;
	}
	public void setQestnno(int qestnno) {
		this.qestnno = qestnno;
	}
	@Override
	public String toString() {
		return "FaqVo [bbsno=" + bbsno + ", qestn=" + qestn + ", answer=" + answer + ", qestnno=" + qestnno + "]";
	}
	
	
	
	
}
