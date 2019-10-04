package Meet_Us.meeter.vo;

public class ReplyVO {
	private int 	reply_no;
	private int 	board_no;
	private String  user_id;
	private String  reply_content;
	private char    reply_delflag;
	private String  reply_insertdate;
	private String  reply_modifydate;

	public int getReply_no() {
		return reply_no;
	}
	
	public void setReply_no(int reply_no) {
		this.reply_no = reply_no;
	}
	
	public int getBoard_no() {
		return board_no;
	}
	
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}
	
	public String getUser_id() {
		return user_id;
	}
	
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	public String getReply_content() {
		return reply_content;
	}

	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}
	
	public char getReply_delflag() {
		return reply_delflag;
	}
	
	public void setReply_delflag(char reply_delflag) {
		this.reply_delflag = reply_delflag;
	}
	
	public String getReply_insertdate() {
		return reply_insertdate;
	}
	
	public void setReply_insertdate(String reply_insertdate) {
		this.reply_insertdate = reply_insertdate;
	}
	
	public String getReply_modifydate() {
		return reply_modifydate;
	}
	
	public void setReply_modifydate(String reply_modifydate) {
		this.reply_modifydate = reply_modifydate;
	}
	
}
