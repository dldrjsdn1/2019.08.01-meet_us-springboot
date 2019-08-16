package Meet_Us.userTeam.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import Meet_Us.userTeam.service.KakaoAPI;
import Meet_Us.userTeam.service.UserTeamService;
import Meet_Us.userTeam.vo.UserTeamVo;

@Controller
@EnableAutoConfiguration
public class UserTeamController {
	@Autowired
	private UserTeamService service;

	@Autowired
	private KakaoAPI kakao;

	// 로그인 jsp
	@RequestMapping(value = "/Login", method = RequestMethod.GET)
	public String Login() throws Exception {
		return "bootstrap.Login";
	}

	// 회원 가입
	@RequestMapping(value = "/signUp", method = RequestMethod.GET)
	public String signUp() throws Exception {
		return "bootstrap.UserInert";
	}

	// kakao api 로그인 정보 확인 ,HttpSession session
	@RequestMapping(value = "/kakaoLogin", method = RequestMethod.GET)
	public String kakaoLogin(@RequestParam("code") String code, HttpSession session, Model model) throws Exception {
		String access_Token = kakao.getAccessToken(code);
		HashMap<String, Object> userInfo = kakao.getUserInfo(access_Token);
		// 클라이언트의 이메일이 존재할 때 세션에 해당 이메일과 토큰 등록
		System.out.println(userInfo.get("user_email"));
		System.out.println(userInfo.get("user_kakaoImg"));
		System.out.println(userInfo.get("nickname"));
		System.out.println(userInfo);
		if (userInfo.get("user_email") != null) {
			session.setAttribute("userId", userInfo.get("user_email"));
			session.setAttribute("access_Token", access_Token);
		}
		System.out.println(service.emailIsCheck((String) userInfo.get("user_email")));
		//이거 확인해줘요 이메일 정보가 있으면 뱉어줘
		if (service.emailIsCheck((String) userInfo.get("user_email")) == 1 || userInfo.get("user_email") == null ) {
			return "bootstrap.Login";
		} else {
			model.addAttribute("user_email", userInfo.get("user_email"));
			model.addAttribute("user_kakaoImg", userInfo.get("user_kakaoImg"));
			return "bootstrap.UserInert";
		}
	}

	// kakao logout
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		kakao.kakaoLogout((String) session.getAttribute("access_Token"));
		session.removeAttribute("access_Token");
		session.removeAttribute("userId");
		return "bootstrap.Login";
	}

	// id 중복 확인
	@RequestMapping(value = "/idIsCheck", method = RequestMethod.GET)
	@ResponseBody
	public int idIsCheck(UserTeamVo vo) {
		System.out.println(vo.getUser_id());
		return service.userIdCheck(vo.getUser_id());
	}

	//userInsert
	@RequestMapping(value = "/userInsert", method = RequestMethod.GET)
	public String userInsert(Model model, UserTeamVo vo, BindingResult bindingResult) throws Exception {
		vo.setUser_defaultAddress(vo.getUser_defaultAddress().substring(0, vo.getUser_defaultAddress().lastIndexOf("(")-1));
		System.out.println(vo.toString());
		service.userInsert(vo);
		return "bootstrap.Home";
	}

	//kakao login
	@RequestMapping(value = "/bootstrap/selectSocial")
	public String selectSocial() {
		return "bootstrap.selectSocial";
	}
	
}
