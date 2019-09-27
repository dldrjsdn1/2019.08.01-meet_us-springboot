package Meet_Us.meeter.vo;

public class MeeterVo {

	private int meeter_board_no;
	private String writer;
	private String title;
	private String contents;
	private String board_write_date;
	private String board_modify_date;
	private int total_member;
	private int current_member;
	private String meeting_place;
	private String meeting_date;
	private String metting_purpose;
	private String limit_area;
	private String limit_age;
	private String limit_gender;
	private String meeter_board_delflag;
	private int board_count;

	public int getMeeter_board_no() {
		return meeter_board_no;
	}
 
	public void setMeeter_board_no(int meeter_board_no) {
		this.meeter_board_no = meeter_board_no;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getBoard_write_date() {
		return board_write_date;
	}

	public void setBoard_write_date(String board_write_date) {
		this.board_write_date = board_write_date;
	}

	public String getBoard_modify_date() {
		return board_modify_date;
	}

	public void setBoard_modify_date(String board_modify_date) {
		this.board_modify_date = board_modify_date;
	}

	public int getTotal_member() {
		return total_member;
	}

	public void setTotal_member(int total_member) {
		this.total_member = total_member;
	}

	public int getCurrent_member() {
		return current_member;
	}

	public void setCurrent_member(int current_member) {
		this.current_member = current_member;
	}

	public String getMeeting_place() {
		return meeting_place;
	}

	public void setMeeting_place(String meeting_place) {
		this.meeting_place = meeting_place;
	}

	public String getMeeting_date() {
		return meeting_date;
	}

	public void setMeeting_date(String meeting_date) {
		this.meeting_date = meeting_date;
	}

	public String getMetting_purpose() {
		return metting_purpose;
	}

	public void setMetting_purpose(String metting_purpose) {
		this.metting_purpose = metting_purpose;
	}

	public String getLimit_area() {
		return limit_area;
	}

	public void setLimit_area(String limit_area) {
		this.limit_area = limit_area;
	}

	public String getLimit_age() {
		return limit_age;
	}

	public void setLimit_age(String limit_age) {
		this.limit_age = limit_age;
	}

	public String getLimit_gender() {
		return limit_gender;
	}

	public void setLimit_gender(String limit_gender) {
		this.limit_gender = limit_gender;
	}

	public String getMeeter_board_delflag() {
		return meeter_board_delflag;
	}

	public void setMeeter_board_delflag(String meeter_board_delflag) {
		this.meeter_board_delflag = meeter_board_delflag;
	}

	public int getBoard_count() {
		return board_count;
	}

	public void setBoard_count(int board_count) {
		this.board_count = board_count;
	}

	@Override
	public String toString() {
		return "MeeterVo [meeter_board_no=" + meeter_board_no + ", writer=" + writer + ", title=" + title
				+ ", contents=" + contents + ", board_write_date=" + board_write_date + ", board_modify_date="
				+ board_modify_date + ", total_member=" + total_member + ", current_member=" + current_member
				+ ", meeting_place=" + meeting_place + ", meeting_date=" + meeting_date + ", metting_purpose="
				+ metting_purpose + ", limit_area=" + limit_area + ", limit_age=" + limit_age + ", limit_gender="
				+ limit_gender + ", meeter_board_delflag=" + meeter_board_delflag + "]\n\n";
	}

}
