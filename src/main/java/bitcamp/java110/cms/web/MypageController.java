package bitcamp.java110.cms.web;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import bitcamp.java110.cms.domain.Cs;
import bitcamp.java110.cms.domain.Mentee;
import bitcamp.java110.cms.domain.Mentor;
import bitcamp.java110.cms.service.CsService;
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
//    model.addAttribute("mentor", mentor);
    
    

    

  }
  
  @GetMapping("menu1")
  public void menu1(Model model) {
    Mentee mentee = menteeService.get(5);

    
    model.addAttribute("mentee", mentee);
    
    
 
    
    
    

  }
  
  
  @GetMapping("menu2")
  public void menu2(Model model) {
//    Mentee menutwo = menteeService.getMenutwo(5);
//    
//    model.addAttribute("menutwo", menutwo);
//    
//    System.out.println(menteeService.getMenutwo(5));
//    
//   
    
    Mentee mentee = menteeService.getM2(5);
    
    model.addAttribute("m2", mentee);
    
    
    System.out.println(menteeService.getM2(5).getClasses().getMono());
    
  }
  
  
  @GetMapping("menu3-1")
  public void menu3_1(Model model) {

 }
  
  @GetMapping("menu3-2")
  public void menu3_2(Model model) {
    
  }
  
  @GetMapping("menu4-1")
  public void menu4_1(Model model) {

    
  }
  
  @GetMapping("menu4-2")
  public void menu4_2(Model model) {
    
  }
  
  @GetMapping("menu4-3")
  public void menu4_3(Model model) {
    
  }
  
  @GetMapping("menu4-4")
  public void menu4_4(Model model) {
    
  }
  
  @GetMapping("menu4-5")
  public void menu4_5(Model model) {
    
  }
  
}


