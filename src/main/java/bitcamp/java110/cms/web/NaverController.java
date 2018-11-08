package bitcamp.java110.cms.web;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import bitcamp.java110.cms.domain.BigTag;
import bitcamp.java110.cms.domain.MiddleTag;
import bitcamp.java110.cms.service.AuthService;
import bitcamp.java110.cms.service.BigTagService;
import bitcamp.java110.cms.service.MiddleTagService;

@Controller
@RequestMapping("/naver")
public class NaverController {

  AuthService authService;
  BigTagService bigtagService;
  MiddleTagService middletagService;
  
  public NaverController(
      AuthService authService,
      BigTagService bigtagService, 
      MiddleTagService middletagService) {
    this.authService = authService;
    this.bigtagService = bigtagService;
    this.middletagService = middletagService;
  }
  

  
  @GetMapping("Tag")
  public void Tag() {
    BigTag b = bigtagService.get(1);
    
    System.out.println("대분류 번호: "+b.getNo());
    System.out.println("대분류 이름: "+b.getName());
    
    MiddleTag m = middletagService.get(1);
    System.out.println("중분류 번호: "+m.getNo());
    System.out.println("중분류 번호: "+m.getName());
    System.out.println("중분류 번호: "+m.getBtno());
    System.out.println("중분류에서 대분류 번호찾기: "+m.getBtno()); 
    System.out.println("----------------------");
    
    List<MiddleTag> m2= middletagService.listBtno(3, 5, 2);
    System.out.println(m2.get(0).getNo());
    System.out.println(m2.get(0).getName());
    System.out.println(m2.get(0).getBtno());

    System.out.println(m2.get(1).getNo());
    System.out.println(m2.get(1).getName());
    System.out.println(m2.get(1).getBtno());

  }


  @GetMapping("naverlogin")
  public void naverlogin() {

  }

  @GetMapping("mainpage")
  public void mainpage() {}

  @GetMapping("callback")
  public void callback(String access_token, HttpSession session) {}


  @RequestMapping("nl")
  public String isComplete(HttpSession session) {
    // return "/app/naver/naverlogin";
    return "redirect:../naver/naverlogin";

  }

  @RequestMapping("cb")
  public String navLogin(HttpServletRequest request) throws Exception {
    return "redirect:../naver/callback";
  }


  @RequestMapping("naver")
  public String naver(String accessToken, HttpSession session) {
    authService.getNaverMember(accessToken);

    return "redirect:../auth/form";
    // try {
    // Member loginUser = authService.getFacebookMember(accessToken, type);
    //
    // // 회원 정보를 세션에 보관한다.
    // session.setAttribute("loginUser", loginUser);
    // String redirectUrl = null;
    //
    // switch (type) {
    // case "manager":
    // redirectUrl = "../manager/list";
    // break;
    // }
    // return "redirect:" + redirectUrl;
    //
    // } catch (Exception e) {
    // e.printStackTrace();
    // session.invalidate();
    // return "redirect:form";
    // }
  }
}


