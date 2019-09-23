package Meet_Us.board.service;

import java.util.List;
import java.util.Map;

import Meet_Us.board.vo.BoardVo;
import Meet_Us.board.vo.PageCriteria;

public interface BoardService {

	public List<BoardVo> selectBoardList() throws Exception;

	public List<BoardVo> selectBoardPageList(PageCriteria cri) throws Exception;
	
	public List<Map<String, Object>> selectCountBoardList() throws Exception;
	
	public List<BoardVo> selectSearchPageList(PageCriteria cri) throws Exception;
	
	public List<Map<String, Object>> selectCountSearchList(String keyword) throws Exception;

	public BoardVo selectBoardDetail(int board_no) throws Exception;

	public int deleteBoard(int board_no) throws Exception;

	public int insertBoard(BoardVo vo) throws Exception;

	public int ModifyBoard(BoardVo vo) throws Exception;

	public int IncreaseBoardViewCount(BoardVo vo) throws Exception;
}
