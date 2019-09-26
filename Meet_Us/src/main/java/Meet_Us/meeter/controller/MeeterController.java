package Meet_Us.meeter.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Meet_Us.meeter.service.MeeterService;
import Meet_Us.meeter.vo.MeeterVo;
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
		
		List<Map<String, Object>> meeterCount = service.selectCountMeeterList();
		System.out.println(meeterCount.size());
		pageMaker.setTotalCount(meeterCount.size()); 

		model.addAttribute("pageCriteria", cri);
		model.addAttribute("list", service.selectMeeterList(cri));
		model.addAttribute("pageMaker", pageMaker);

		return "bootstrap.MeeterMain";
	}
	
	@RequestMapping(value = "/MeeterDetail", method = RequestMethod.GET)
	public String MeeterDetail(Model model, MeeterVo meeterVo) throws Exception {
		model.addAttribute("detail", service.selectMeeterDetail(meeterVo));
		
		return "bootstrap.MeeterDetail";
	}
	
	@RequestMapping(value = "/MeeterInsert", method = RequestMethod.GET)
	public String MeeterInsert(Model model) throws Exception {
		
		return "bootstrap.MeeterInsert";
	}
}
