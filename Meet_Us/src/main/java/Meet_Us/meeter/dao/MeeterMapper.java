package Meet_Us.meeter.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import Meet_Us.meeter.vo.MeetingBoardVo;
import Meet_Us.meeter.vo.PageCriteria;
import Meet_Us.meeter.vo.ReplyVO;

 
@Repository
public interface MeeterMapper {

	public List<MeetingBoardVo> selectMeetingList(PageCriteria cri) throws Exception;
	
	public List<Map<String, Object>> selectCountMeetingList() throws Exception;
	
	public List<Map<String, Object>> selectCountSearchMeetingList(PageCriteria cri) throws Exception;
	
	public List<MeetingBoardVo> selectSearchMeetingList(PageCriteria cri) throws Exception;
	
	public void viewCountIncrease(int no) throws Exception;
	
	public MeetingBoardVo selectMeetingDetail(int MB_NO) throws Exception;
	
	public void insertMeetingBoard(MeetingBoardVo meetingBoardVo) throws Exception;
	
	public int MeeterInsertDo(ReplyVO replyVO) throws Exception;

} 
