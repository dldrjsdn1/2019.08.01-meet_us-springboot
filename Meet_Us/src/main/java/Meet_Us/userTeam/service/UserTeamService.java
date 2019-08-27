package Meet_Us.userTeam.service;

import java.util.List;

import Meet_Us.userTeam.vo.UserTeamVo;

public interface UserTeamService {

	// 아이디 중복 체크
	public int userIdCheck(String user_id);

	// 아이디 중복 체크
	public int emailIsCheck(String user_email);

	//회원가입
	public int userInsert(UserTeamVo vo) throws Exception;

	//고유 id 확인
	public int seqlIsCheck(int user_seq);
	
	//id값 자동 삽입 기능
	public int userIdMin();
	
	
	
}
