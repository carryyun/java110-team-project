package bitcamp.java110.cms.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import bitcamp.java110.cms.service.AuthService;

@Controller
@RequestMapping("/naver")
public class NaverController {

    AuthService authService;
    
    public NaverController(AuthService authService) {
      this.authService = authService;
  }

    @GetMapping("naverlogin")
    public void naverlogin() {

    }
    @GetMapping("mainpage")
    public void mainpage() {
    }
    
    @GetMapping("callback")
    public void callback(String access_token,HttpSession session) {
    }
    
    
    @RequestMapping("nl")
    public String isComplete(HttpSession session) {
//        return "/app/naver/naverlogin";
        return "redirect:../naver/naverlogin";

    }
    @RequestMapping("cb")
    public String navLogin(HttpServletRequest request) throws Exception {   
        return "redirect:../naver/callback";
    }   
    
    
    @RequestMapping("naver")
    public String naver(
        String accessToken,
            HttpSession session) {
      authService.getNaverMember(accessToken);
      
      return "redirect:../auth/form";
//        try {
//          Member loginUser = authService.getFacebookMember(accessToken, type);
//          
//          // 회원 정보를 세션에 보관한다.
//          session.setAttribute("loginUser", loginUser);
//          String redirectUrl = null;
//          
//          switch (type) {
//          case "manager":
//              redirectUrl = "../manager/list";
//              break; 
//          }
//          return "redirect:" + redirectUrl;
//          
//        } catch (Exception e) {
//            e.printStackTrace();
//            session.invalidate();
//            return "redirect:form";
//        }
    }
}














