package Meet_Us.board.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import Meet_Us.board.service.BoardService;
import Meet_Us.board.service.ReplyService;
import Meet_Us.board.vo.BoardVo;
import Meet_Us.board.vo.PageCriteria;
import Meet_Us.board.vo.PageMaker;
import Meet_Us.board.vo.ReplyVo;

@Controller
@EnableAutoConfiguration
public class BoardController {

	@Autowired
	private BoardService service;
	@Autowired
	private ReplyService replyService;

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
		pageMaker.setTotalCount(noticeCount.size()); // 총 게시글 수를 쿼리문으로 세어서 리스트로 받아온뒤 그 사이즈를 개수로 사용

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
		pageMaker.setTotalCount(noticeCount.size()); // 총 게시글 수를 쿼리문으로 세어서 리스트로 받아온뒤 그 사이즈를 개수로 사용

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
		model.addAttribute("myLoginID", "Yu-Jin");

		return "bootstrap.NoticeDetail";
	}

	@RequestMapping(value = "/NoticeDelete", method = RequestMethod.GET)
	public String NoticeDelete(Model model, BoardVo vo) throws Exception {
		service.deleteBoard(vo.getBoard_no());
		model.addAttribute("list", service.selectBoardList());

		return "bootstrap.Notice";
	}

	@RequestMapping(value = "/NoticeInsert", method = RequestMethod.GET)
	public String NoticeInsert() throws Exception {

		return "bootstrap.NoticeInsert";
	}

	@RequestMapping(value = "/NoticeInsertProcess", method = RequestMethod.GET)
	public String NoticeInsertProcess(Model model, BoardVo vo) throws Exception {
		service.insertBoard(vo);

		return "redirect:/Notice";
	}

	@RequestMapping(value = "/NoticeModify", method = RequestMethod.GET)
	public String NoticeModify(Model model, BoardVo vo) throws Exception {
		model.addAttribute("modify", service.selectBoardDetail(vo.getBoard_no()));

		return "bootstrap.NoticeModify";
	}

	@RequestMapping(value = "/NoticeModifyProcess", method = RequestMethod.GET)
	public String NoticeModifyProcess(Model model, BoardVo vo) throws Exception {
		service.ModifyBoard(vo);

		model.addAttribute("detail", service.selectBoardDetail(vo.getBoard_no()));

		return "bootstrap.NoticeDetail";
	}

	@RequestMapping(value = "/ReplyList", method = RequestMethod.GET)
	@ResponseBody
	public List<ReplyVo> ReplyList(ReplyVo reVo) throws Exception {
		return replyService.listReply(reVo.getBoard_no());
	}

	@RequestMapping(value = "/ReplyCount", method = RequestMethod.GET)
	@ResponseBody
	public int ReplyCount(ReplyVo reVo) throws Exception {
		List<ReplyVo> rs = replyService.listReply(reVo.getBoard_no());
		reVo.setReply_count(rs.size());

		return rs.size();
	}

	@RequestMapping(value = "/ReplyInsert", method = RequestMethod.GET)
	@ResponseBody
	private int ReplyInsert(ReplyVo reVo) throws Exception {
		replyService.insertReply(reVo);

		return 1;
	}

	@RequestMapping(value = "/ReplyDelete", method = RequestMethod.GET)
	@ResponseBody
	public int ReplyDelete(int reply_no) throws Exception {
		replyService.deleteReply(reply_no);

		return 1;
	}

	@RequestMapping(value = "/ReplyModify", method = RequestMethod.GET)
	@ResponseBody
	public int ReplyModify(ReplyVo reVo) throws Exception {
		replyService.updateReply(reVo);

		return 1;
	}

}
