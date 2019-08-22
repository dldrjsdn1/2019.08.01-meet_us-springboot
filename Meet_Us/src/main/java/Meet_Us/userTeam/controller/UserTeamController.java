package Meet_Us.userTeam.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import Meet_Us.userTeam.service.UserTeamService;
import Meet_Us.userTeam.vo.UserTeamVo;

@Controller
@EnableAutoConfiguration
public class UserTeamController {
	@Autowired
	private UserTeamService service;

	@RequestMapping(value = "/Login", method = RequestMethod.GET)
	public String Login(Model model, UserTeamVo vo, BindingResult bindingResult) throws Exception {
		
		
		return "bootstrap.Login";
	}

	@RequestMapping(value = "/signUp", method = RequestMethod.GET)
	public String UserInsert(Model model) throws Exception {
		return "bootstrap.UserInert";
	}

	@RequestMapping(value = "/idIsCheck", method = RequestMethod.GET)
	@ResponseBody
	public int idIsCheck(UserTeamVo vo) {
		System.out.println(vo.getUser_id());
		return service.userIdCheck(vo.getUser_id());
	}

	@RequestMapping(value = "/emailIsCheck", method = RequestMethod.GET)
	@ResponseBody
	public int emailIsCheck(@RequestParam("user_email") String user_email) {
		System.out.println(user_email);
		System.out.println(service.emailIsCheck(user_email));
		return service.emailIsCheck(user_email);
	}

	@RequestMapping(value = "/userInsert", method = RequestMethod.GET)
	public String userInsert(Model model, UserTeamVo vo, BindingResult bindingResult) throws Exception {
		vo.setUser_defaultAddress(vo.getUser_defaultAddress().substring(0,vo.getUser_defaultAddress().lastIndexOf(" ")));
		System.out.println(vo.toString());
		System.out.println(service.userInsert(vo));
		return "bootstrap.Home";
	}

}
