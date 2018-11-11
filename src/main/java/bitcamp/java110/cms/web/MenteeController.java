package bitcamp.java110.cms.web;

import java.util.List;
import javax.servlet.ServletContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import bitcamp.java110.cms.domain.Mentee;
import bitcamp.java110.cms.domain.Mentor;
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
  
  @GetMapping("insert")
  public void insert(Mentee mentee) {
    mentee.setEmail("Young@test.com");
    mentee.setName("김영록");
    mentee.setNick("annnnn");
    mentee.setPwd("1111");
    menteeService.add(mentee);
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
  
  
}

