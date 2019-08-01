package Meet_Us.board.service;

import java.util.List;


import Meet_Us.board.vo.BoardVo;


public interface BoardService {

	/* �������� ����Ʈ ��� ���� */
	public List<BoardVo> selectBoardList() throws Exception;

	/* �������� ������ ���� */
	public BoardVo selectBoardDetail(int board_no) throws Exception;

	/* �������� ����(����Ʈ �÷��� ����) */
	public int selectBoardDelete(int no) throws Exception;
}
