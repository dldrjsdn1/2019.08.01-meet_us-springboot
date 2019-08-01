package Meet_Us.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Meet_Us.board.service.BoardService;
import Meet_Us.board.vo.BoardVo;

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
	public String Notice(Model model) throws Exception {
		model.addAttribute("list", service.selectBoardList());

		return "bootstrap.Notice";
	}

	@RequestMapping(value = "/NoticeDetail", method = RequestMethod.GET)
	public String NoticeDetail(Model model, BoardVo vo) throws Exception {
		System.out.println(vo.getBoard_no());
		model.addAttribute("detail", service.selectBoardDetail(vo.getBoard_no()));

		return "bootstrap.NoticeDetail";
	}
	
	@RequestMapping(value = "/NoticeDelete", method = RequestMethod.GET)
	public String NoticeDelete(Model model, BoardVo vo) throws Exception {
		System.out.println(service.selectBoardDelete(vo.getBoard_no())+"¿‘¥œ¥Ÿ.");

		model.addAttribute("list", service.selectBoardList());

		return "bootstrap.Notice";
	}

	@RequestMapping(value = "/NoticeInsert", method = RequestMethod.GET)
	public String NoticeInsert() throws Exception {
		return "bootstrap.NoticeInsert";
	}

	@RequestMapping(value = "/NoticeModify", method = RequestMethod.GET)
	public String NoticeModify() throws Exception {
		return "bootstrap.NoticeModify";
	}

}
