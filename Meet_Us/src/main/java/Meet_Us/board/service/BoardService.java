package Meet_Us.board.service;

import java.util.List;


import Meet_Us.board.vo.BoardVo;


public interface BoardService {

	/* 공지사항 리스트 모두 띄우기 */
	public List<BoardVo> selectBoardList() throws Exception;

	/* 공지사항 디테일 보기 */
	public BoardVo selectBoardDetail(int board_no) throws Exception;

	/* 공지사항 삭제(딜리트 플래그 수정) */
	public int selectBoardDelete(int no) throws Exception;
}
