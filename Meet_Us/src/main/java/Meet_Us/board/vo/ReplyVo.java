package Meet_Us.board.vo;

public class ReplyVo {
	private int reply_no;
	private int board_no;
	private String user_id;
	private String reply_memo;
	private String reply_delflag;
	private String reply_insertdate;
	private String reply_modifydate;
	private int reply_count;

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

	public String getReply_memo() {
		return reply_memo;
	}

	public void setReply_memo(String reply_memo) {
		this.reply_memo = reply_memo;
	}

	public String getReply_delflag() {
		return reply_delflag;
	}

	public void setReply_delflag(String reply_delflag) {
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

	public int getReply_count() {
		return reply_count;
	}

	public void setReply_count(int reply_count) {
		this.reply_count = reply_count;
	}

	@Override
	public String toString() {
		return "ReplyVo [reply_no=" + reply_no + ", board_no=" + board_no + ", user_id=" + user_id + ", reply_memo="
				+ reply_memo + ", reply_delflag=" + reply_delflag + ", reply_insertdate=" + reply_insertdate
				+ ", reply_modifydate=" + reply_modifydate + "]";
	}

}
