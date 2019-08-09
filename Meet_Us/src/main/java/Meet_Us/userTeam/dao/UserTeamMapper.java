package Meet_Us.userTeam.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import Meet_Us.userTeam.vo.UserTeamVo;

@Repository
public interface UserTeamMapper {
	//아이디 중복 체크
	public int userIdCheck(String user_id);
	//이메일 중복 체크
	public int emailIsCheck(String user_email);
	//user 가입
	public int userInsert(UserTeamVo vo);

}
