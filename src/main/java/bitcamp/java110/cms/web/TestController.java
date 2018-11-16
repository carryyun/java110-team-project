package bitcamp.java110.cms.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/test")
public class TestController {
  @RequestMapping("prdt")
  public String prdt() {
    return "redirect:../product/prdt";
  }
  @RequestMapping("main")
  public String main() {
    return "redirect:../mainpage/mainpage";
  }
  
  @RequestMapping("detail")
  public String detail() {
    return "redirect:../product/detail";
  }
  
}


