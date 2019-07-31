package Meet_Us.main.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Meet_Us.main.dao.MainMapper;
import Meet_Us.main.vo.MainVo;

@Controller
@EnableAutoConfiguration
@RequestMapping(value="/*", produces="text/plain;charset=UTF-8")
public class MainController {

	@Autowired
	private MainMapper mapper;

//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String home(Locale locale, Model model) {
//
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//
//		String formattedDate = dateFormat.format(date);
//
//		model.addAttribute("serverTime", formattedDate);
//
//		return "index";
//	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String Home() throws Exception{
      return "bootstrap.Home";
  }
	
	@RequestMapping(value = "/MeeterMain", method = RequestMethod.GET)
	public String MeeterMain() throws Exception{
      return "bootstrap.MeeterMain";
  }
	
	@RequestMapping(value = "/MeeterDetail", method = RequestMethod.GET)
	public String MeeterDetail() throws Exception{
      return "bootstrap.MeeterDetail";
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
