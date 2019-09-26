package Meet_Us.board.controller;

import java.io.File; 
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import Meet_Us.board.service.BoardService;
import Meet_Us.board.vo.BoardVo;
import Meet_Us.board.vo.FileVo;
import Meet_Us.board.vo.PageCriteria;
import Meet_Us.board.vo.PageMaker;

@Controller
@EnableAutoConfiguration
public class BoardController {

	@Autowired
	private BoardService service;

	@RequestMapping(value = "/boardTest", method = RequestMethod.GET)
	public String test(Model model) throws Exception {
		model.addAttribute("test", service.selectBoardList());

		return "board/BoardMain";
	}

	@RequestMapping(value = "/Notice", method = RequestMethod.GET)
	public String Notice(Model model, PageCriteria cri) throws Exception {
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		
		List<Map<String, Object>> noticeCount = service.selectCountBoardList();
		pageMaker.setTotalCount(noticeCount.size()); 
		
		List<BoardVo> list = service.selectBoardPageList(cri);
		model.addAttribute("pageCriteria", cri);
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);

		return "bootstrap.Notice";
	}
	
	@RequestMapping(value = "/NoticeSearchList", method = RequestMethod.GET)
	public String NoticeSearchList(Model model, PageCriteria cri) throws Exception {
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		List<Map<String, Object>> noticeCount = service.selectCountSearchList(cri.getKeyword());
		pageMaker.setTotalCount(noticeCount.size()); 
		
		List<BoardVo> list = service.selectSearchPageList(cri);
		model.addAttribute("pageCriteria", cri);
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);

		return "bootstrap.Notice";
	}

	@RequestMapping(value = "/NoticeDetail", method = RequestMethod.GET)
	public String NoticeDetail(Model model, BoardVo vo) throws Exception {
		service.IncreaseBoardViewCount(vo);
		model.addAttribute("detail", service.selectBoardDetail(vo.getBoard_no()));
		
		List<FileVo> files = service.fileDetail(vo.getBoard_no());
		model.addAttribute("files", files);
		System.out.println(files);

		return "bootstrap.NoticeDetail";
	}

	@RequestMapping(value = "/NoticeDelete", method = RequestMethod.GET)
	public String NoticeDelete(Model model, BoardVo vo) throws Exception {
		service.deleteBoard(vo.getBoard_no());
		model.addAttribute("list", service.selectBoardList());

		return "redirect:/Notice";
	}

	@RequestMapping(value = "/NoticeInsert", method = RequestMethod.GET)
	public String NoticeInsert() throws Exception {

		return "bootstrap.NoticeInsert";
	}

	@RequestMapping(value = "/NoticeInsertProcess", method = RequestMethod.POST)
	public String NoticeInsertProcess(Model model, BoardVo vo, FileVo file
			, HttpSession session
			, MultipartHttpServletRequest request
			, @RequestParam("files") MultipartFile[] files) throws Exception {
		
		System.out.println(files.length);
		String description = vo.getBoard_content();
		vo.setBoard_content(description.replace("\r\n", "<br>")); // 줄바꿈 처리
		service.insertBoard(vo);
		int fileNo = service.latelyBoard();
		
		for(int i=0; i < files.length; i++) {
			if(files[i].getOriginalFilename() != "") {
			
		String fileName = files[i].getOriginalFilename();
		String fileNameExtension = FilenameUtils.getExtension(fileName).toLowerCase();
		File destinationFile;
		String destinationFileName;
		String fileUrl= "D:/Meet_Us_workspace/Meet_Us/Meet_Us/src/main/webapp/WEB-INF/FileStore/";
//		String fileUrl= "/var/lib/tomcat8/webapps/file/";
		
		
		do {
			destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + fileNameExtension;
			destinationFile = new File(fileUrl + destinationFileName);
		} while (destinationFile.exists());

		destinationFile.getParentFile().mkdirs();
		files[i].transferTo(destinationFile);
		
           file.setUp_Seq(fileNo);
           file.setFile_Name(destinationFileName);
           file.setFile_Real_Name(fileName);
           file.setFile_Path(fileUrl);

           service.fileInsert(file); //file insert
           
			}
		}
//		System.out.println(vo.toString());
//		System.out.println(file.toString());
		return "redirect:/Notice";
	}

	@RequestMapping(value = "/NoticeModify", method = RequestMethod.GET)
	public String NoticeModify(Model model, BoardVo vo) throws Exception {
		model.addAttribute("modify", service.selectBoardDetail(vo.getBoard_no()));
		
		List<FileVo> files = service.fileDetail(vo.getBoard_no());
		model.addAttribute("files", files);

		return "bootstrap.NoticeModify";
	}

	@RequestMapping(value = "/NoticeModifyProcess", method = RequestMethod.POST)
	public String NoticeModifyProcess(Model model, BoardVo vo
			                                     , FileVo file
			                                     , HttpSession session
			                                     , MultipartHttpServletRequest request
			                                     , @RequestParam("files") MultipartFile[] filesM ) throws Exception {
		
		String description = vo.getBoard_content();
		vo.setBoard_content(description.replace("\r\n", "<br>")); // 줄바꿈 처리
		service.ModifyBoard(vo);
		model.addAttribute("detail", service.selectBoardDetail(vo.getBoard_no()));
		
		int fileNo = service.latelyBoard();
		for(int i=0; i < filesM.length; i++) {
			if(filesM[i].getOriginalFilename() != "") {
			
		String fileName = filesM[i].getOriginalFilename();
		String fileNameExtension = FilenameUtils.getExtension(fileName).toLowerCase();
		File destinationFile;
		String destinationFileName;
		String fileUrl= "D:/Meet_Us_workspace/Meet_Us/Meet_Us/src/main/webapp/WEB-INF/FileStore/";
//		String fileUrl= "/var/lib/tomcat8/webapps/file/";
		
		
		do {
			destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + fileNameExtension;
			destinationFile = new File(fileUrl + destinationFileName);
		} while (destinationFile.exists());

		destinationFile.getParentFile().mkdirs();
		filesM[i].transferTo(destinationFile);
		
           file.setUp_Seq(fileNo);
           file.setFile_Name(destinationFileName);
           file.setFile_Real_Name(fileName);
           file.setFile_Path(fileUrl);

           service.fileInsert(file); //file insert
           
			}
		}
		
		List<FileVo> files = service.fileDetail(vo.getBoard_no());
		model.addAttribute("files", files);
		
		return "bootstrap.NoticeDetail";
	}
	
	//파일 다운로드
	@RequestMapping("/fileDown/{up_Seq}/{seq}")
    private void fileDown(@PathVariable String up_Seq, @PathVariable String seq, HttpServletRequest request, HttpServletResponse response) throws Exception{
        
        request.setCharacterEncoding("UTF-8");
        FileVo fileVo = service.fileDownload(Integer.parseInt(up_Seq), Integer.parseInt(seq));
        service.fileDownloadCnt(Integer.parseInt(up_Seq), Integer.parseInt(seq));
     
        //파일 업로드된 경로 
        try{
            String filePath = fileVo.getFile_Path();
            filePath += "/";
            String savePath = filePath;
            String fileName = fileVo.getFile_Name();
            
            //실제 내보낼 파일명 
            String oriFileName = fileVo.getFile_Real_Name();
            InputStream in = null;
            OutputStream os = null;
            File file = null;
            boolean skip = false;
            String client = "";
            
            //파일을 읽어 스트림에 담기  
            try{
                file = new File(savePath, fileName);
                in = new FileInputStream(file);
            } catch (FileNotFoundException fe) {
                skip = true;
            }
            
            client = request.getHeader("User-Agent");
            
            //파일 다운로드 헤더 지정 
            response.reset();
            response.setContentType("application/octet-stream");
            response.setHeader("Content-Description", "JSP Generated Data");
            
            if (!skip) {
                // IE
                if (client.indexOf("MSIE") != -1) {
                    response.setHeader("Content-Disposition", "attachment; filename=\""
                            + java.net.URLEncoder.encode(oriFileName, "UTF-8").replaceAll("\\+", "\\ ") + "\"");
                    // IE 11 이상.
                } else if (client.indexOf("Trident") != -1) {
                    response.setHeader("Content-Disposition", "attachment; filename=\""
                            + java.net.URLEncoder.encode(oriFileName, "UTF-8").replaceAll("\\+", "\\ ") + "\"");
                } else {
                    // 한글 파일명 처리
                    response.setHeader("Content-Disposition",
                            "attachment; filename=\"" + new String(oriFileName.getBytes("UTF-8"), "ISO8859_1") + "\"");
                    response.setHeader("Content-Type", "application/octet-stream; charset=utf-8");
                }
                response.setHeader("Content-Length", "" + file.length());
                os = response.getOutputStream();
                byte b[] = new byte[(int) file.length()];
                int leng = 0;
                while ((leng = in.read(b)) > 0) {
                    os.write(b, 0, leng);
                }
            } else {
                response.setContentType("text/html;charset=UTF-8");
                System.out.println("<script language='javascript'>alert('파일을 찾을 수 없습니다');history.back();</script>");
            }
            in.close();
            os.close();
        } catch (Exception e) {
            System.out.println("ERROR : " + e.getMessage());
        }
        
    }
	
	

		//파일 삭제
//		@ResponseBody
		@RequestMapping("/fileDelete/{up_Seq}/{seq}")
	    private String fileDelete(@PathVariable String up_Seq , @PathVariable String seq
//	    		, RedirectAttributes redirectAttributes
	    		,Model model
	    		) throws Exception{
		
			service.fileDelete(Integer.parseInt(up_Seq), Integer.parseInt(seq));
//	        redirectAttributes.addAttribute("seq", up_Seq);
	        
//	        return "bootstrap.NoticeDetail";
//	        return "redirect:../NoticeModify";
	        
	        model.addAttribute("modify", service.selectBoardDetail(Integer.parseInt(up_Seq)));
			
			List<FileVo> files = service.fileDetail(Integer.parseInt(up_Seq));
			model.addAttribute("files", files);

			return "bootstrap.NoticeModify";
	    }

}
