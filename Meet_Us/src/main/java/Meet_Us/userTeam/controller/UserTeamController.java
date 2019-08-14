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
	
	//로그인 jsp
	@RequestMapping(value = "/Login", method = RequestMethod.GET)
	public String Login() throws Exception {
		return "bootstrap.Login";
	}
	
	//회원 가입
	@RequestMapping(value = "/signUp", method = RequestMethod.GET)
	public String signUp() throws Exception {
		return "bootstrap.UserInert";
	}
	
	//kakao api 로그인 정보 확인 ,HttpSession session
	@RequestMapping(value = "/kakaoLogin", method = RequestMethod.GET)
	public String kakaoLogin(@RequestParam("code") String code ,HttpSession session) throws Exception {
		String access_Token = kakao.getAccessToken(code);
	    HashMap<String, Object> userInfo = kakao.getUserInfo(access_Token);
	    System.out.println("login Controller : " + userInfo);
	    
	    //    클라이언트의 이메일이 존재할 때 세션에 해당 이메일과 토큰 등록
	    System.out.println(userInfo.get("email"));
	    System.out.println(userInfo.get("id"));
	    if (userInfo.get("email") != null) {
	        session.setAttribute("userId", userInfo.get("email"));
	        session.setAttribute("access_Token", access_Token);
	       
	    }
	    kakao.kakaoLogout((String)session.getAttribute("access_Token"));
	    session.removeAttribute("access_Token");
	    session.removeAttribute("userId");
	    
	    
	    
	     return "bootstrap.Login";
	}

	// kakao logout
	@RequestMapping(value="/logout")
	public String logout(HttpSession session) {
	    kakao.kakaoLogout((String)session.getAttribute("access_Token"));
	    session.removeAttribute("access_Token");
	    session.removeAttribute("userId");
	    return "bootstrap.Login";
	}

	
	//id 중복 확인
	@RequestMapping(value = "/idIsCheck", method = RequestMethod.GET)
	@ResponseBody
	public int idIsCheck(UserTeamVo vo) {
		System.out.println(vo.getUser_id());
		return service.userIdCheck(vo.getUser_id());
	}

	//email 중복 체크
	@RequestMapping(value = "/emailIsCheck", method = RequestMethod.GET)
	@ResponseBody
	public int emailIsCheck(@RequestParam("user_email") String user_email) {
		System.out.println(user_email);
		System.out.println(service.emailIsCheck(user_email));
		return service.emailIsCheck(user_email);
	}

	@RequestMapping(value = "/userInsert", method = RequestMethod.GET)
	public String userInsert(Model model, UserTeamVo vo, BindingResult bindingResult) throws Exception {
		vo.setUser_defaultAddress(
				vo.getUser_defaultAddress().substring(0, vo.getUser_defaultAddress().lastIndexOf(" ")));
		return "bootstrap.Home";
	}

}
