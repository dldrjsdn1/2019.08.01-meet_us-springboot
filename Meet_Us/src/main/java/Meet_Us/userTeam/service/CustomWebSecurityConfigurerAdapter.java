package Meet_Us.userTeam.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;


@EnableWebSecurity
public class CustomWebSecurityConfigurerAdapter extends WebSecurityConfigurerAdapter {

	
	@Autowired
	CustomUserDetailsService customUserDetailsService;

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Bean
	public AuthenticationSuccessHandler successHandler() {
		return new CustomLoginSuccessHandler("/");
	}
	
	@Override
    public void configure(WebSecurity web) throws Exception {
        // 허용되어야 할 경로들
        web.ignoring().antMatchers("/resources/**"
//                                   "/MeeterDetail",
//                                   "/NoticeDetail",
                                   ,"/emailConfirm"
//                                   "/IdSearch",
                                   ,"/SuccessPage"
                                   ); 
    }
	
	
	@Override
    protected void configure(HttpSecurity http) throws Exception {
		 http.authorizeRequests()
         // ROLE_USER, ROLE_ADMIN으로 권한 분리 유알엘 정의 여기 밑에 넣으면 nav가 활성화가 된다. 위에는 그냥 참고만 하자 
	         .antMatchers("/", "/Login","/error**","/IdSearch","/PasswordSearch","/signUp","/selectSocial","/Notice","/Developers","/Map","/emailConfirm").permitAll()
//	         .antMatchers("/MeeterMain","/MeeterDetail").access("ROLE_USER")
	         .antMatchers("/**").access("ROLE_USER")
	         .antMatchers("/**").access("ROLE_ADMIN")
	         .antMatchers("/**").authenticated()
         .and()
         	 .formLogin()
         	 .loginProcessingUrl("/login")
         	 .loginPage("/Login")
         	 .usernameParameter("user_id")
             .passwordParameter("user_password")
             .successHandler(successHandler())
             .permitAll()
         .and()
	         .logout()
	         .logoutSuccessUrl("/")
	         .invalidateHttpSession(true)
		 .and()
		 	 .csrf();
//		에러 문제점 forbidden 403
		 http.cors().and();
		 http.csrf().disable();
    }
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(customUserDetailsService).passwordEncoder(passwordEncoder());
	}
	
}
