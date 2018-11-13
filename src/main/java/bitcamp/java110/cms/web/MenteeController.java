package bitcamp.java110.cms.web;

import java.util.List;
import javax.servlet.ServletContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import bitcamp.java110.cms.domain.Mentee;
import bitcamp.java110.cms.service.MenteeService;

@Controller
@RequestMapping("/mentee")
public class MenteeController {
  
  MenteeService menteeService;
  ServletContext sc;
  
  public MenteeController(MenteeService menteeService,
      ServletContext sc) {
    this.menteeService = menteeService;
    this.sc = sc;
  }
  
  @RequestMapping("signup")
  public void signup(Mentee mentee) {

      //menteeService.add(mentee);
    }
  
  @GetMapping("findAll")
  public void findAll() {
    System.out.println("findAll 호출");
    List<Mentee> mlist= menteeService.list(3, 3);
    for(Mentee m : mlist) {
      System.out.println(m.getNo());
      System.out.println(m.getBas_addr());
      System.out.println(m.getNote());
    }
  }
  
  
  @RequestMapping("findAllByEmail")
  public void findAllByEmail(String email,Model model) {
    
    model.addAttribute("checkemail", email);
  }
  
  
}

