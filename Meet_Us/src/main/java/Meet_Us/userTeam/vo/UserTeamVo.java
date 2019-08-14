package Meet_Us.userTeam.vo;

public class UserTeamVo {
	private int user_kakaoId;
	private String user_id;
	private String user_password;
	private String user_email;
	private String user_name;
	private int user_age;
	private char user_gender;
	private String user_defaultAddress;
	private int user_authority;

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public int getUser_age() {
		return user_age;
	}

	public void setUser_age(int user_age) {
		this.user_age = user_age;
	}

	public char getUser_gender() {
		return user_gender;
	}

	public void setUser_gender(char user_gender) {
		this.user_gender = user_gender;
	}

	public String getUser_defaultAddress() {
		return user_defaultAddress;
	}

	public void setUser_defaultAddress(String user_defaultAddress) {
		this.user_defaultAddress = user_defaultAddress;
	}

	public int getUser_authority() {
		return user_authority;
	}

	public void setUser_authority(int user_authority) {
		this.user_authority = user_authority;
	}

	@Override
	public String toString() {
		return "UserTeamVo [user_id=" + user_id + ", user_password=" + user_password + ", user_email=" + user_email
				+ ", user_name=" + user_name + ", user_age=" + user_age + ", user_gender=" + user_gender
				+ ", user_defaultAddress=" + user_defaultAddress + ", user_authority=" + user_authority + "]";
	}

}
