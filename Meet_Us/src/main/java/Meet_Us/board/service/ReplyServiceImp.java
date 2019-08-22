package Meet_Us.board.service;

import java.util.List; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Meet_Us.board.dao.ReplyMapper;
import Meet_Us.board.vo.ReplyVo;

@Service
public class ReplyServiceImp implements ReplyService{
	
	@Autowired
	private ReplyMapper mapper;

	@Override
	public List<ReplyVo> listReply(int board_no) throws Exception {
		return mapper.listReply(board_no);
	}
	
	@Override
	public int insertReply(ReplyVo vo) throws Exception {
		return mapper.insertReply(vo);
	}

	@Override
	public int deleteReply(int reply_no) throws Exception {
		return mapper.deleteReply(reply_no);
	}

	@Override
	public int updateReply(ReplyVo vo) throws Exception {
		return mapper.updateReply(vo);
	}
}
