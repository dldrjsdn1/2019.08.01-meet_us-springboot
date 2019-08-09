package Meet_Us.userTeam.service;

import java.util.List;

import Meet_Us.userTeam.vo.UserTeamVo;

public interface UserTeamService {

	// 아이디 중복 체크
	public int userIdCheck(String user_id);

	// 아이디 중복 체크
	public int emailIsCheck(String user_email);

	public int userInsert(UserTeamVo vo);

}
