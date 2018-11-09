package bitcamp.java110.cms.web;

import java.util.List;
import javax.servlet.ServletContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import bitcamp.java110.cms.domain.Mentor;
import bitcamp.java110.cms.service.MentorService;

@Controller
@RequestMapping("/mentorlist")
public class MentorController {
  
  MentorService mentorService;
  ServletContext sc;
  
  public MentorController(MentorService mentorService,
      ServletContext sc) {
    this.mentorService = mentorService;
    this.sc = sc;
  }
  
  @GetMapping("insert")
  public void insert(Mentor mentor) {
    System.out.println("insert 호출");
    mentorService.add(mentor);
  }
  
  @GetMapping("findAll")
  public void findAll() {
    System.out.println("findAll 호출");
    List<Mentor> mlist= mentorService.list(3, 3);
    for(Mentor m : mlist) {
      System.out.println(m.getNo());
      System.out.println(m.getBas_addr());
      System.out.println(m.getCarr());
      System.out.println(m.getNote());
    }
  }
}

