package Meet_Us.board.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import Meet_Us.board.vo.BoardVo;
import Meet_Us.board.vo.PageCriteria;

@Repository
public interface BoardMapper {

	/* 공지사항 리스트 모두 띄우기 (테스트용 )*/
	public List<BoardVo> selectBoardList() throws Exception;

	/* 공지사항 리스트 10개씩 띄우기 */
	public List<BoardVo> selectBoardPageList(PageCriteria cri) throws Exception;
	
	/* 공지사항 리스트 총 개수 구하기 */
	public List<Map<String, Object>> selectCountBoardList() throws Exception;
	
	/* 검색된 단어로 공지사항 리스트 띄우기 (페이징 포함) */
	public List<BoardVo> selectSearchPageList(PageCriteria cri) throws Exception;
	
	/* 검색된 단어로 공지사항 리스트 총 개수 구하기 */
	public List<Map<String, Object>> selectCountSearchList(String keyword) throws Exception;

	/* 공지사항 디테일 보기 */
	public BoardVo selectBoardDetail(int board_no) throws Exception;

	/* 공지사항 삭제(딜리트 플래그 수정) */
	public int deleteBoard(int board_no) throws Exception;

	/* 공지사항 추가 */
	public int insertBoard(BoardVo vo) throws Exception;

	/* 공지사항 수정 */
	public int ModifyBoard(BoardVo vo) throws Exception;

	/* 공지사항 조회수 증가 */
	public int IncreaseBoardViewCount(BoardVo vo) throws Exception;
}
