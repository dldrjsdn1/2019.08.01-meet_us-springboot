package Meet_Us.board.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import Meet_Us.board.vo.BoardVo;

@Repository
public interface BoardMapper {

	/* �������� ����Ʈ ��� ���� */
	public List<BoardVo> selectBoardList() throws Exception;

	/* �������� ������ ���� */
	public BoardVo selectBoardDetail(int board_no) throws Exception;

	/* �������� ����(����Ʈ �÷��� ����) */
	public int selectBoardDelete(int no) throws Exception;

}
