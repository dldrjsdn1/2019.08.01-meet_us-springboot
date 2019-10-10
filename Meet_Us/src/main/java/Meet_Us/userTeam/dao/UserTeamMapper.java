package Meet_Us.userTeam.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import Meet_Us.userTeam.vo.UserTeamVo;

@Repository
public interface UserTeamMapper {
	// 아이디 중복 체크
	public int userIdCheck(String user_id);

	// 아이디 중복 체크
	public int nameIsCheck(String user_name);

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

	// 이메일 인증이 성공하면 계정 활성화
	public void updateEmailConfirm(String user_email);

	// 아이디 찾기
	public String SeachUserId(UserTeamVo vo);

	// 비밀번호 찾기
	public int SeachUserPw(UserTeamVo vo);

	// 비밀번호 업데이트
	public int UpdateUserPw(UserTeamVo vo);

	// 로그인 정보 긁어오기- > 로그인 하기
	public UserTeamVo readUser(String user_id);

	// 권한 넣기
	public void insertAuthority(String user_id);

	// 권한 가져오기
	public List<String> readAuthority(String username);

	// 자기 정보 가져오기 
	public UserTeamVo userSetting(String user_name);

}