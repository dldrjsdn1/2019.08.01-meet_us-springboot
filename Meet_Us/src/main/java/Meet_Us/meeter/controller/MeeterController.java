package Meet_Us.meeter.controller;

import java.io.File;
import java.util.List;
import java.util.Map;

import javax.mail.Multipart;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import Meet_Us.board.service.AmazonS3ClientService;
import Meet_Us.meeter.service.MeeterService;
import Meet_Us.meeter.vo.FileVo;
import Meet_Us.meeter.vo.MeetingBoardVo;
import Meet_Us.meeter.vo.PageCriteria;
import Meet_Us.meeter.vo.PageMaker;

@Controller
@EnableAutoConfiguration
public class MeeterController {

	@Autowired
	private MeeterService service;
	@Autowired
	private AmazonS3ClientService amazonS3ClientService;

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
		System.out.println("검색 개수:" + meetingCount.size());
		
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
	@RequestMapping(value = "/MeeterInsertAction", method = RequestMethod.POST )
	public void MeeterInsertAction(Model model, MeetingBoardVo meetingBoardVo) throws Exception {
		model.addAttribute("MB_NO", meetingBoardVo.getMB_NO());
		
		service.insertMeetingBoard(meetingBoardVo);
	}
	
	@RequestMapping(value = "/MeetingImageInsert", method = RequestMethod.GET)
	public String MeetingImageInsert(Model model
									, @RequestParam("MB_NO") int MB_NO
									) throws Exception {
		model.addAttribute("MB_NO", MB_NO);
		return "bootstrap.MeetingImageInsert";
	}
	
	@RequestMapping(value = "/MeetingImageInsertAction", method = RequestMethod.POST)
	public String MeetingImageInsertAction(Model model
									, FileVo file
									, MultipartHttpServletRequest request
									) throws Exception {
		
		String filecount = request.getParameter("image_count");
		
		int no = Integer.parseInt(request.getParameter("MB_NO"));
		System.out.println(no);
		System.out.println(filecount);
		System.out.println(request.getFile("image_1"));
		MultipartFile[] files = new MultipartFile[Integer.parseInt(filecount)];
		for(int i=0; i<Integer.parseInt(filecount); i++) {
			String name = "image_" +i;
			files[i] = request.getFile(name);
			System.out.println(files[i]);
		}
		System.out.println(filecount);
		for(int i=0; i < files.length; i++) {
		if(files[i].getOriginalFilename() != "") {
				
		this.amazonS3ClientService.uploadFileToS3Bucket(files[i], true);
			
		String fileName = files[i].getOriginalFilename();
		String fileNameExtension = FilenameUtils.getExtension(fileName).toLowerCase();
		File destinationFile;
		String destinationFileName;
		String fileUrl= "amazon.s3";
		
		do {
			destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + fileNameExtension;
			destinationFile = new File(fileUrl + destinationFileName);
		} while (destinationFile.exists());

           file.setUp_Seq(no);
           file.setFile_Name(destinationFileName);
           file.setFile_Real_Name(fileName);
           file.setFile_Path(fileUrl);

           service.fileInsert(file); //file insert
			}
		}
		
		return "bootstrap.MeetingImageInsert";
	}
	
	
	
	
}
