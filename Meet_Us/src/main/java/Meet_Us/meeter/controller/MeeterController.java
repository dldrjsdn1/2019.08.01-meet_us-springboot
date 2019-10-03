package Meet_Us.meeter.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import Meet_Us.meeter.service.MeeterService;
import Meet_Us.meeter.vo.MeetingBoardVo;
import Meet_Us.meeter.vo.PageCriteria;
import Meet_Us.meeter.vo.PageMaker;

@Controller
@EnableAutoConfiguration
public class MeeterController {

	@Autowired
	private MeeterService service;

	@RequestMapping(value = "/MeeterMain", method = RequestMethod.GET)
	public String MeeterMain(Model model, PageCriteria cri) throws Exception {
		PageMaker pageMaker = new PageMaker();
		cri.setPerPageNum(6);  
		pageMaker.setCri(cri);
		
		List<Map<String, Object>> meetingCount = service.selectCountMeetingList();
		System.out.println(meetingCount.size());
		System.out.println(meetingCount);
		pageMaker.setTotalCount(meetingCount.size()); 

		model.addAttribute("pageCriteria", cri);
		model.addAttribute("list", service.selectMeetingList(cri));
		model.addAttribute("pageMaker", pageMaker);

		return "bootstrap.MeeterMain";
	}
	
	@RequestMapping(value = "/MeetingBoardSearchList", method = RequestMethod.GET)
	public String NoticeSearchList(Model model, PageCriteria cri) throws Exception {
		PageMaker pageMaker = new PageMaker();
		cri.setPerPageNum(6); 
		pageMaker.setCri(cri);

		List<Map<String, Object>> meetingCount = service.selectCountSearchMeetingList(cri);
		pageMaker.setTotalCount(meetingCount.size()); 
		System.out.println(meetingCount.size());
		
		List<MeetingBoardVo> list = service.selectSearchMeetingList(cri);
		model.addAttribute("pageCriteria", cri);
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);

		return "bootstrap.MeeterMain";
	}
	
	@RequestMapping(value = "/MeeterDetail", method = RequestMethod.GET)
	public String MeeterDetail(Model model, @RequestParam("MB_NO") int MB_NO) throws Exception {
		model.addAttribute("detail", service.selectMeetingDetail(MB_NO));
		
		return "bootstrap.MeeterDetail";
	}
	
	@RequestMapping(value = "/MeeterInsert", method = RequestMethod.GET)
	public String MeeterInsert(Model model) throws Exception {
		
		return "bootstrap.MeeterInsert";
	}
	
	@ResponseBody
	@RequestMapping(value = "/MeeterInsertAction", method = RequestMethod.POST)
	public void MeeterInsertAction(Model model, MeetingBoardVo meetingBoardVo) throws Exception {
		System.out.println(meetingBoardVo);
		
		service.insertMeetingBoard(meetingBoardVo);
	}
	
	
	
	
}
