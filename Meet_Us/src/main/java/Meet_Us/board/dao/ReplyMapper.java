package Meet_Us.board.dao;

import java.util.List; 

import org.springframework.stereotype.Repository;

import Meet_Us.board.vo.ReplyVo;

@Repository
public interface ReplyMapper {

	//��� ����Ʈ
	public List<ReplyVo> listReply(int board_no) throws Exception;
	//��� ���
	public int insertReply(ReplyVo vo) throws Exception;
	//��� ����
	public int deleteReply(int reply_no) throws Exception;
	//��� ����
	public int updateReply(ReplyVo vo) throws Exception;
	
}
