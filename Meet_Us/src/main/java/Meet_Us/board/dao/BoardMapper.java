package Meet_Us.board.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import Meet_Us.board.vo.BoardVo;
import Meet_Us.board.vo.PageCriteria;

@Repository
public interface BoardMapper {

	/* �������� ����Ʈ ��� ���� (�׽�Ʈ�� )*/
	public List<BoardVo> selectBoardList() throws Exception;

	/* �������� ����Ʈ 10���� ���� */
	public List<BoardVo> selectBoardPageList(PageCriteria cri) throws Exception;
	
	/* �������� ����Ʈ �� ���� ���ϱ� */
	public List<Map<String, Object>> selectCountBoardList() throws Exception;
	
	/* �˻��� �ܾ�� �������� ����Ʈ ���� (����¡ ����) */
	public List<BoardVo> selectSearchPageList(PageCriteria cri) throws Exception;
	
	/* �˻��� �ܾ�� �������� ����Ʈ �� ���� ���ϱ� */
	public List<Map<String, Object>> selectCountSearchList(String keyword) throws Exception;

	/* �������� ������ ���� */
	public BoardVo selectBoardDetail(int board_no) throws Exception;

	/* �������� ����(����Ʈ �÷��� ����) */
	public int deleteBoard(int board_no) throws Exception;

	/* �������� �߰� */
	public int insertBoard(BoardVo vo) throws Exception;

	/* �������� ���� */
	public int ModifyBoard(BoardVo vo) throws Exception;

	/* �������� ��ȸ�� ���� */
	public int IncreaseBoardViewCount(BoardVo vo) throws Exception;
}
