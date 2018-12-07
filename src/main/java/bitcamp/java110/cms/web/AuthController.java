package bitcamp.java110.cms.web;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import bitcamp.java110.cms.domain.Mentee;
import bitcamp.java110.cms.service.AuthService;
import bitcamp.java110.cms.service.MenteeService;

@Controller
@RequestMapping("/auth")
public class AuthController {

    AuthService authService;
    MenteeService menteeService;
    
    public AuthController(AuthService authService, MenteeService menteeService) {
        this.authService = authService;
        this.menteeService = menteeService;
    }
    
    @GetMapping("form")
    public void form() {
    }
    
    @GetMapping("header")
    public void header() {
      
    }
    
    @RequestMapping("kakao")
    public void kakao(
        String email,
        String id,
        String profile_image,
        String nickname,
            HttpSession session) {
//      authService.getNaverMember(accessToken);
      
      System.out.println(email);
      System.out.println(id);
      System.out.println(profile_image);
      System.out.println(nickname);
//      return "redirect:../auth/form";
    }
   
    
    @PostMapping("login.do")
    public @ResponseBody int login(
            String email,
            String pwd,
            String save,
            HttpServletResponse response,
            HttpSession session) {
        if (save != null) {// 이메일 저장하기를 체크했다면,
            Cookie cookie = new Cookie("email", email);
            cookie.setMaxAge(60 * 60 * 24 * 30);
            response.addCookie(cookie);
            Cookie cookie2 = new Cookie("save", "checked");
            cookie.setMaxAge(60 * 60 * 24 * 30);
            response.addCookie(cookie2);
        } else {// 이메일을 저장하고 싶지 않다면,
            Cookie cookie = new Cookie("email", "");
            cookie.setMaxAge(0);
            response.addCookie(cookie);
            Cookie cookie2 = new Cookie("save", "");
            cookie.setMaxAge(0);
            response.addCookie(cookie2);
        }
        Mentee loginUser = authService.getMentee(email, pwd);
        
        if (loginUser != null) {
            if(loginUser.getStat() == 'Y') {
              return -1;
            }else if(loginUser.getStat() == 'S' ) {
              return -2;
            }else {
            // 회원 정보를 세션에 보관한다.
            session.setAttribute("loginUser", loginUser);
            return 1;
            }
            
        }else {
          session.invalidate();
          return 0;
          
        }
    }
    
    @GetMapping("logout")
    public String logout(HttpSession session) {
        session.removeAttribute("loginUser");
        System.out.println("log out!");
        return "redirect:../mainpage/mainpage";
    }
    
    @RequestMapping("fblogin")
    public String fblogin(
            String accessToken,
            HttpSession session) {
      
        try {
          Mentee loginUser = authService.getFacebookMember(accessToken);
          System.out.println(loginUser);
          
          session.setAttribute("loginUser", loginUser);
          session.setAttribute("email", loginUser.getEmail());
          session.setAttribute("name", loginUser.getName());
         
          String redirectUrl = null;
          System.out.println(menteeService.checkByEmail(loginUser));
          
          if(menteeService.checkByEmail(loginUser) == 0)
            redirectUrl = "../mentee/fbsignup";
          else {
            redirectUrl = "../mainpage/mainpage";
          }
          
          return "redirect:" + redirectUrl;
          
        } catch (Exception e) {
            e.printStackTrace();
            session.invalidate();
            return "redirect:form";
        }
    }
    @RequestMapping("naver")
    public String naver(String accessToken, HttpSession session) {
      Mentee loginUser = authService.getNaverMember(accessToken);
      session.setAttribute("loginUser", loginUser);
      return "redirect:../mainpage/mainpage";
    }
    @GetMapping("callback")
    public void callback(String access_token, HttpSession session) {}
  
 
}














