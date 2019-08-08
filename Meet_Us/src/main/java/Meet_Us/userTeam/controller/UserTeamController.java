package Meet_Us.userTeam.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import Meet_Us.userTeam.service.UserTeamService;

@Controller
@EnableAutoConfiguration
public class UserTeamController {
	@Autowired
	private UserTeamService service;

	@RequestMapping(value = "/UserInert", method = RequestMethod.GET)
	public String UserInsert(Model model) throws Exception {
		return "bootstrap.UserInert";
	}

	@RequestMapping(value = "/idIsCheck", method = RequestMethod.GET)
	@ResponseBody
	public int idIsCheck(@RequestParam("user_id") String user_id) {
		System.out.println(user_id);
		return service.userIdCheck(user_id);
	}
}
