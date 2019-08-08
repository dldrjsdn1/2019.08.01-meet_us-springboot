package Meet_Us.userTeam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Meet_Us.userTeam.dao.UserTeamMapper;
import Meet_Us.userTeam.vo.UserTeamVo;

@Service
public class UserTeamServiceImp implements UserTeamService {

	@Autowired
	private UserTeamMapper mapper;

//아이디 중복 체크
	@Override
	public int userIdCheck(String user_id) {
		return mapper.userIdCheck(user_id);
	}

}
