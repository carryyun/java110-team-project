package bitcamp.java110.cms.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import bitcamp.java110.cms.domain.Mentee;
import bitcamp.java110.cms.domain.Mentor;
import bitcamp.java110.cms.service.MenteeService;
import bitcamp.java110.cms.service.MentorService;

@Controller
@RequestMapping("/mypage")
public class MypageController {

  MenteeService menteeService;
  MentorService mentorService;

  public MypageController(MenteeService menteeService,MentorService mentorService) {
   this.menteeService = menteeService;
   this.mentorService = mentorService;
  }

  @GetMapping("mypage")
  public void mypage(Model model) {
    Mentee mentee = menteeService.get(5);
    Mentor mentor = mentorService.get(5);
    
    System.out.println(mentee);
    System.out.println(mentor);
    
    model.addAttribute("mentee", mentee);
    model.addAttribute("mentor", mentor);
    

  }

 }


