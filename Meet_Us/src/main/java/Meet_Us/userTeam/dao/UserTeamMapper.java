package Meet_Us.userTeam.dao;


import org.springframework.stereotype.Repository;

import Meet_Us.userTeam.vo.UserTeamVo;

@Repository
public interface UserTeamMapper {
	// 아이디 중복 체크
	public int userIdCheck(String user_id);

	// 이메일 중복 체크
	public int emailIsCheck(String user_email);

	// user 가입
	public int userInsert(UserTeamVo vo);

	// 고유 id 확인
	public int seqlIsCheck(int user_seq);

	// id값 자동 삽입 기능
	public int userIdMin();
	
	// 이메일 인증 확인
	public int emailConfirm(UserTeamVo vo);
	
	//이메일 인증이 성공하면 계정 활성화
	public void updateEmailConfirm(String user_email);
	
	//아이디 찾기
	public String SeachUserId(UserTeamVo vo);

}
