package bitcamp.java110.cms.web;

import javax.servlet.ServletContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mainpage")
public class MainController {


  ServletContext sc;

  public MainController() {
  }
  
  @GetMapping("mainpage")
  public void mainpage() {
    
  }

}


