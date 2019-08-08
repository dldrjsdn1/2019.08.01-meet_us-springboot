package Meet_Us.userTeam.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import Meet_Us.userTeam.vo.UserTeamVo;

@Repository
public interface UserTeamMapper {

	public int userIdCheck(String user_id);

}
