package Meet_Us.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Meet_Us.board.service.BoardService;

@Controller
@EnableAutoConfiguration
public class BoardController {

	@Autowired
	private BoardService service;

	@RequestMapping(value = "/boardTest", method = RequestMethod.GET)
	public String test(Model model)  throws Exception{
		model.addAttribute("test", service.test());
		
		return "board/BoardMain";
	}

	@RequestMapping(value = "/Notice", method = RequestMethod.GET)
	public String Notice() throws Exception{
      return "bootstrap.Notice";
  }
	
	@RequestMapping(value = "/NoticeDetail", method = RequestMethod.GET)
	public String NoticeDetail() throws Exception{
      return "bootstrap.NoticeDetail";
  }
	
	@RequestMapping(value = "/NoticeInsert", method = RequestMethod.GET)
	public String NoticeInsert() throws Exception{
      return "bootstrap.NoticeInsert";
  }
	
	@RequestMapping(value = "/NoticeModify", method = RequestMethod.GET)
	public String NoticeModify() throws Exception{
      return "bootstrap.NoticeModify";
  }

}

