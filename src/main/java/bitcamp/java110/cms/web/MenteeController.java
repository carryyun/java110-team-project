package bitcamp.java110.cms.web;

import javax.servlet.ServletContext;
import org.springframework.stereotype.Controller;
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
  
  @GetMapping("insert")
  public void insert(Mentee mentee) {
    mentee.setEmail("Young@test.com");
    mentee.setName("김영록");
    mentee.setNick("annnnn");
    mentee.setPwd("1111");
    mentee.setPwd2("1111");
    if(mentee.getPwd().equalsIgnoreCase(mentee.getPwd2())) {
    menteeService.add(mentee);
    }
  }
  
}

