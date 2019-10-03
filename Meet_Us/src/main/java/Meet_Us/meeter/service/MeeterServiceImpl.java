package Meet_Us.meeter.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Meet_Us.meeter.dao.MeeterMapper;
import Meet_Us.meeter.vo.MeetingBoardVo;
import Meet_Us.meeter.vo.PageCriteria;
 
@Service
public class MeeterServiceImpl implements MeeterService {

	@Autowired
	private MeeterMapper mapper;
	
	@Override
	public List<MeetingBoardVo> selectMeetingList(PageCriteria cri) throws Exception {
		return mapper.selectMeetingList(cri);
	}
	
	@Override
	public List<Map<String, Object>> selectCountMeetingList() throws Exception {
		return mapper.selectCountMeetingList();
	}
	
	@Override
	public List<Map<String, Object>> selectCountSearchMeetingList(PageCriteria cri) throws Exception {
		return mapper.selectCountSearchMeetingList(cri);
	}
	
	@Override
	public List<MeetingBoardVo> selectSearchMeetingList(PageCriteria cri) throws Exception {
		if(cri.getPlaceKeyword() == "" || cri.getPlaceKeyword() == "")
			cri.setPlaceKeyword("null");
		if(cri.getPurposeKeyword() == "" || cri.getPurposeKeyword() == "")
			cri.setPurposeKeyword("null");
		if(cri.getDateKeyword() == "" || cri.getDateKeyword() == "")
			cri.setDateKeyword("null");
		if(cri.getTitleKeyword() == "" || cri.getTitleKeyword() == "")
			cri.setTitleKeyword("null");
		
		return mapper.selectSearchMeetingList(cri);
	}
	
	@Override
	public void viewCountIncrease(int no) throws Exception {
		 mapper.viewCountIncrease(no);
	}

	@Override
	public MeetingBoardVo selectMeetingDetail(int MB_NO) throws Exception {
		return mapper.selectMeetingDetail(MB_NO);
	}
	
	@Override
	public void insertMeetingBoard(MeetingBoardVo meetingBoardVo) throws Exception {
		switch(meetingBoardVo.getMB_PURPOSE()){
			case "0001" : meetingBoardVo.setMB_PURPOSE("주류");
			break;
			case "0002" : meetingBoardVo.setMB_PURPOSE("스터디");
			break;
			case "0003" : meetingBoardVo.setMB_PURPOSE("운동");
			break;
			case "0004" : meetingBoardVo.setMB_PURPOSE("프로젝트");
			break;
			case "0005" : meetingBoardVo.setMB_PURPOSE("카페");
			break;
		}
		if(meetingBoardVo.getMB_LIMIT_GENDER() == ""  || meetingBoardVo.getMB_LIMIT_GENDER() == null)
			meetingBoardVo.setMB_LIMIT_GENDER("n");
		if(meetingBoardVo.getMB_LIMIT_OTHER() == "" || meetingBoardVo.getMB_LIMIT_OTHER() == null)
			meetingBoardVo.setMB_LIMIT_OTHER("미정");
		mapper.insertMeetingBoard(meetingBoardVo);
	}
}
