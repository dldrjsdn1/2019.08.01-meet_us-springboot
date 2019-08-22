package Meet_Us.board.service;

import java.util.List;

import Meet_Us.board.vo.ReplyVo;


public interface ReplyService {
	
	//��� ����Ʈ
	public List<ReplyVo> listReply(int board_no) throws Exception;
	//��� ���
	public int insertReply(ReplyVo vo) throws Exception;
	//��� ����
	public int deleteReply(int reply_no) throws Exception;
	//��� ����
	public int updateReply(ReplyVo vo) throws Exception;
}
