package Meet_Us.userTeam.service;

import java.util.List;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import Meet_Us.userTeam.dao.UserTeamMapper;
import Meet_Us.userTeam.vo.UserTeamVo;

@Service
public class UserTeamServiceImp implements UserTeamService {
	
   @Autowired
   private JavaMailSender mailSender;

   @Autowired
   private UserTeamMapper mapper;

   // 아이디 중복 체크
   @Override
   public int userIdCheck(String user_id) {
      return mapper.userIdCheck(user_id);
   }

   // 이메일 중복 체크
   @Override
   public int emailIsCheck(String user_email) {
      return mapper.emailIsCheck(user_email);
   }

   // 사용자 가입 트랜젝션 걸자 망필 온다-> 이거하고 CustomUserDetailsService 여기 고쳐랴 해요
   @Override
   @Transactional
   public int userInsert(UserTeamVo vo) throws Exception{
      if(vo.getUser_email()!=null) {
      MailHandler sendMail = new MailHandler(mailSender);
       sendMail.setSubject("[Meet_us  서비스 이메일 인증]");
           sendMail.setText(
                   new StringBuffer().append("<h1>메일인증</h1>")
                                  .append("<a href='http://localhost:8087/emailConfirm?user_email=")
                                  .append(vo.getUser_email())
                                  .append("&user_authority=")
                                  .append(vo.getUser_authority())
                                  .append("&key=99")
                                  .append("' target='_blank'>이메일 인증 확인</a>").toString());
           sendMail.setFrom("jodummy158@gmail.com", "Meet_us ");
           sendMail.setTo(vo.getUser_email());
           sendMail.send();
           mapper.userInsert(vo);
           mapper.insertAuthority(vo.getUser_id());
           return 1;
      }
      return 0;
   }

   // 사용자 고유 번호 넣기
   @Override
   public int seqlIsCheck(int user_seq) {
      return mapper.seqlIsCheck(user_seq);
   }
   
   //사용자 최솟값 넣기
   @Override
   public int userIdMin() {
      return mapper.userIdMin();
   }

   @Override
   public int emailConfirm(UserTeamVo vo) {
      return mapper.emailConfirm(vo);
   }

   @Override
   public void updateEmailConfirm(String user_email) {
      mapper.updateEmailConfirm(user_email);
   }

   @Override
   public String SeachUserId(UserTeamVo vo) {
      return mapper.SeachUserId(vo);
   }

   @Override
   public int SeachUserPw(UserTeamVo vo) throws Exception {
	  BCryptPasswordEncoder bcryptPasswordEncoder = new BCryptPasswordEncoder();
	  String result = new TempKey().getKey(9, true);
      vo.setUser_password(bcryptPasswordEncoder.encode(result));
      if(mapper.SeachUserPw(vo) == 1) {
         MailHandler sendMail = new MailHandler(mailSender);
         sendMail.setSubject("[Meet_us 서비스 이메일 인증]");
              sendMail.setText(
                   new StringBuffer().append("<h1>메일인증</h1>")
                                  .append("<a href='localhost:8087/")
                                  .append("' target='_blank'>Login</a>")
                                  .append("<h1>"+result+"</h1>").toString());
           sendMail.setFrom("jodummy158@gmail.com", "Meet_us");
           sendMail.setTo(vo.getUser_email());
           sendMail.send();
           System.out.println(vo.toString());
           mapper.UpdateUserPw(vo);
           return 1;  
      }else {
         return 0;
      }
   }


}