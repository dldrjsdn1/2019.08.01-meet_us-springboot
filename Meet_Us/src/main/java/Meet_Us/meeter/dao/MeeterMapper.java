package Meet_Us.meeter.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import Meet_Us.meeter.vo.FileVo;
import Meet_Us.meeter.vo.ImageVo;
import Meet_Us.meeter.vo.MeetBoardReplyVo;
import Meet_Us.meeter.vo.MeetingBoardVo;
import Meet_Us.meeter.vo.PageCriteria;
 
@Repository
public interface MeeterMapper {
	
	public MeetingBoardVo[] selectHomeMeetingList() throws Exception;

	public MeetingBoardVo[] selectMeetingList(PageCriteria cri) throws Exception;
	
	public List<Map<String, Object>> selectCountMeetingList() throws Exception;
	
	public List<Map<String, Object>> selectCountSearchMeetingList(PageCriteria cri) throws Exception;
	
	public MeetingBoardVo[] selectSearchMeetingList(PageCriteria cri) throws Exception;
	
	public MeetingBoardVo selectOne(int MB_NO) throws Exception;
	
	public void viewCountIncrease(int no) throws Exception;
	
	public void MeetingDelete(int no) throws Exception;
	
	public String imagePath(int no) throws Exception;
	
	public void MeetingDeleteImage(int no) throws Exception;
	
	public MeetingBoardVo selectMeetingDetail(int MB_NO) throws Exception;
	
	public List<MeetingBoardVo> selectSimilarMeeting(HashMap<String, String> map) throws Exception;
	
	public void insertMeetingBoard(MeetingBoardVo meetingBoardVo) throws Exception;
	
	public void modifyMeetingBoard(MeetingBoardVo meetingBoardVo) throws Exception;
	
	//이미지 업로드
	public void fileInsert(FileVo file) throws Exception;
	
	//이미지 url 조회
	public List<String> selectMeetingImageUrl(int MB_NO) throws Exception;
	
	public List<ImageVo> selectImage(int MB_NO) throws Exception;
	
	/*
	   * title : reply
	   * content : reply쪽 다룹니다.
	   * tip : vo쪽이 다릅니다, 확인해주세요
	   */
	   
	   //   reply list
	   public List<MeetBoardReplyVo> replyList(int mb_no);
	   
	   //reply insert
	   public int insertReply(MeetBoardReplyVo vo);

	   //reply delete
	   public int replyDelete(int board_reply_no);
	   
	   //reply count
	   public int replyCount(int mb_no);
	   
	   //Meeting 참석
	   public void MeetingAttend(HashMap<String, String> map) throws Exception;
	   
	   //CURRENT_MEMBER 증가
	   public void CurrentCountInc(String MB_NO) throws Exception;
	   
	   //ATTEND LIST
	   public List<String> AttendMember(int MB_NO) throws Exception;
	   
	   //Meeting 참석
	   public void MeetingAttendCancel(HashMap<String, String> map) throws Exception;
	   
	   //CURRENT_MEMBER 증가
	   public void CurrentCountDec(String MB_NO) throws Exception;
} 
