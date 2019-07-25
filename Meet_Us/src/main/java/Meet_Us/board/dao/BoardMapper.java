package Meet_Us.board.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import Meet_Us.board.vo.BoardVo;

@Repository
public interface BoardMapper {
	
	public List<BoardVo> test() throws Exception;

}
