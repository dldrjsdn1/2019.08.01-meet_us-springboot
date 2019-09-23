package Meet_Us.board.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Meet_Us.board.dao.BoardMapper;
import Meet_Us.board.vo.BoardVo;
import Meet_Us.board.vo.PageCriteria;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardMapper mapper;

	@Override
	public List<BoardVo> selectBoardList() throws Exception {
		return mapper.selectBoardList();
	}

	@Override
	public List<BoardVo> selectBoardPageList(PageCriteria cri) throws Exception {
		return mapper.selectBoardPageList(cri);
	}

	@Override
	public List<Map<String, Object>> selectCountBoardList() throws Exception {
		return mapper.selectCountBoardList();
	}

	@Override
	public List<BoardVo> selectSearchPageList(PageCriteria cri) throws Exception {
		return mapper.selectSearchPageList(cri);
	}

	@Override
	public List<Map<String, Object>> selectCountSearchList(String keyword) throws Exception {
		return mapper.selectCountSearchList(keyword);
	}

	@Override
	public BoardVo selectBoardDetail(int board_no) throws Exception {
		return mapper.selectBoardDetail(board_no);
	}

	@Override
	public int deleteBoard(int board_no) throws Exception {
		return mapper.deleteBoard(board_no);
	}

	@Override
	public int insertBoard(BoardVo vo) throws Exception {
		return mapper.insertBoard(vo);
	}

	@Override
	public int ModifyBoard(BoardVo vo) throws Exception {
		return mapper.ModifyBoard(vo);
	}

	@Override
	public int IncreaseBoardViewCount(BoardVo vo) throws Exception {
		return mapper.IncreaseBoardViewCount(vo);
	}

}
