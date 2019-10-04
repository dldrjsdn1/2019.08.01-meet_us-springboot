package Meet_Us.meeter.vo;

public class Re_Reply {
	private int 	re_reply_no;
	private int 	reply_no;
	private String  user_id; 
	private char 	re_reply_delflag;
	private String  re_reply_insertdate;
	private String 	re_reply_modifydate;
	
	public int getRe_reply_no() {
		return re_reply_no;
	}
	
	public void setRe_reply_no(int re_reply_no) {
		this.re_reply_no = re_reply_no;
	}
	
	public int getReply_no() {
		return reply_no;
	}
	
	public void setReply_no(int reply_no) {
		this.reply_no = reply_no;
	}
	
	public String getUser_id() {
		return user_id;
	}
	
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	public char getRe_reply_delflag() {
		return re_reply_delflag;
	}
	
	public void setRe_reply_delflag(char re_reply_delflag) {
		this.re_reply_delflag = re_reply_delflag;
	}
	
	public String getRe_reply_insertdate() {
		return re_reply_insertdate;
	}
	
	public void setRe_reply_insertdate(String re_reply_insertdate) {
		this.re_reply_insertdate = re_reply_insertdate;
	}
	
	public String getRe_reply_modifydate() {
		return re_reply_modifydate;
	}
	
	public void setRe_reply_modifydate(String re_reply_modifydate) {
		this.re_reply_modifydate = re_reply_modifydate;
	}
	
}
