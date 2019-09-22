package Meet_Us.userTeam.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import Meet_Us.userTeam.service.KakaoAPI;
import Meet_Us.userTeam.service.TempKey;
import Meet_Us.userTeam.service.UserTeamService;
import Meet_Us.userTeam.vo.UserTeamGrade;
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

   // 로그인 세션
   @RequestMapping(value = "/LoginPage", method = RequestMethod.POST)
   public String LoginPage(UserTeamVo vo, UserTeamGrade sessionVo, HttpServletRequest request, Model model)
         throws Exception {

      if (vo.getUser_id() != null && vo.getUser_password() != null && service.userLogin(vo) == 1) {
         sessionVo.setUser_id(vo.getUser_id());//id 넣기
         HttpSession httpSession = request.getSession(true);
         httpSession.setAttribute("user", sessionVo);
         return "bootstrap.MeeterMain";
      } else {
         model.addAttribute("error", 404);
         return "bootstrap.Login";
      }

   }

   // default door 회원 가입
   @RequestMapping(value = "/signUp", method = RequestMethod.GET)
   public String signUp(Model model) throws Exception {
      model.addAttribute("key", 1);
      return "bootstrap.UserInsert";
   }

   // kakao api 로그인 정보 확인 ,HttpSession session
   @RequestMapping(value = "/kakaoLogin", method = RequestMethod.GET)
   public String kakaoLogin(@RequestParam("code") String code, HttpSession session, Model model) throws Exception {

      String access_Token = kakao.getAccessToken(code);
      HashMap<String, Object> userInfo = kakao.getUserInfo(access_Token);
      System.out.println(userInfo.get("id"));
      System.out.println(userInfo.get("user_email"));
      System.out.println(userInfo.get("user_kakaoImg"));
      System.out.println(userInfo.get("nickname"));
      System.out.println(userInfo);
      if (userInfo.get("user_email") != null) {
         session.setAttribute("userId", userInfo.get("user_email"));
         session.setAttribute("access_Token", access_Token);
      }
      System.out.println(service.emailIsCheck((String) userInfo.get("user_email")));

      // 이거 확인해줘요 이메일 정보가 있으면 뱉어줘 카카오만 빠짐
      if (service.seqlIsCheck(Integer.parseInt((String) userInfo.get("id"))) == 1) {
         model.addAttribute("key", 3);
         return "bootstrap.SuccessPage";
      } else {
         model.addAttribute("key", 2);
         model.addAttribute("user_seq", userInfo.get("id"));
         model.addAttribute("user_email", userInfo.get("user_email"));
         model.addAttribute("user_kakaoImg", userInfo.get("user_kakaoImg"));
         return "bootstrap.UserInsert";
      }
   }

   // id 중복 확인
   @RequestMapping(value = "/idIsCheck", method = RequestMethod.GET)
   @ResponseBody
   public int idIsCheck(UserTeamVo vo) {
      System.out.println(vo.getUser_id());
      return service.userIdCheck(vo.getUser_id());
   }

   // id 찾기
   @RequestMapping(value = "/SeachUserId", method = RequestMethod.GET)
   @ResponseBody
   public String SeachUserId(UserTeamVo vo) {
      System.out.println(vo.toString());
      return service.SeachUserId(vo);
   }

   // pw 찾기
   @RequestMapping(value = "/SeachUserPw", method = RequestMethod.GET)
   @ResponseBody
   public int SeachUserPw(UserTeamVo vo) throws Exception {
      System.out.println(vo.toString());
      return service.SeachUserPw(vo);
   }

   // 이메일 중복 체크
   @RequestMapping(value = "/emailIsCheck", method = RequestMethod.GET)
   @ResponseBody
   public int emailIsCheck(UserTeamVo vo) {
      System.out.println(vo.getUser_email());
      return service.emailIsCheck(vo.getUser_email());
   }

   // kakao login
   @RequestMapping(value = "/selectSocial")
   public String selectSocial() {
      return "bootstrap.selectSocial";
   }

   @RequestMapping(value = "/SuccessPage", method = { RequestMethod.GET, RequestMethod.POST })
   public String SuccessPage(UserTeamVo vo, @RequestParam("key") String key, Model model, BindingResult bindingResult, HttpServletRequest req) throws Exception {
      try {
         vo.setUser_defaultAddress(vo.getUser_defaultAddress().substring(0, vo.getUser_defaultAddress().lastIndexOf("(") - 1));
      } catch (Exception e) {
         vo.setUser_defaultAddress(vo.getUser_defaultAddress());
      }
      //일반
      if (Integer.parseInt(key) == 1 ) {
      
         //1차 오류
         vo.setUser_seq(new TempKey().getKey(8, true)+service.userIdMin());
         vo.setUser_authority(new TempKey().getKey(20, true));
         service.userInsert(vo);
         model.addAttribute("key", key);
         return "bootstrap.SuccessPage";
      } 
      //카카오 
      else {
         vo.setUser_authority("Y");
         System.out.println("2. vo : " + vo.toString());
         service.userInsert(vo);
         model.addAttribute("key", key);
         return "bootstrap.SuccessPage";
      }
   }

   @RequestMapping(value = "/emailConfirm", method = { RequestMethod.GET, RequestMethod.POST })
   public String emailConfirm(@RequestParam("key") String key, UserTeamVo vo, Model model) throws Exception {
      if (service.emailConfirm(vo) == 1) {
         model.addAttribute("key", key);
         model.addAttribute("user_email", vo.getUser_email());
         service.updateEmailConfirm(vo.getUser_email());
         return "bootstrap.SuccessPage";
      } else {
         model.addAttribute("key", 66);
         return "bootstrap.SuccessPage";
      }
   }

   @RequestMapping(value = "/IdSearch")
   public String EmailSearch(Model model) {
      System.out.println("이메일 찾기");
      model.addAttribute("check", "id");
      return "bootstrap.UserSearch";
   }

   @RequestMapping(value = "/PasswordSearch")
   public String PasswordSearch(Model model) {
      System.out.println("비번 찾기");
      model.addAttribute("check", "password");
      return "bootstrap.UserSearch";
   }

}