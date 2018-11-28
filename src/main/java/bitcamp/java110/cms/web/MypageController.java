package bitcamp.java110.cms.web;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import bitcamp.java110.cms.domain.ClassOrder;
import bitcamp.java110.cms.domain.ClassQna;
import bitcamp.java110.cms.domain.Cs;
import bitcamp.java110.cms.domain.Mentee;
import bitcamp.java110.cms.domain.Mentor;
import bitcamp.java110.cms.domain.ProductOrder;
import bitcamp.java110.cms.domain.ProductQnA;
import bitcamp.java110.cms.service.ClassOrderService;
import bitcamp.java110.cms.service.ClassQnaService;
import bitcamp.java110.cms.service.CsService;
import bitcamp.java110.cms.service.MenteeService;
import bitcamp.java110.cms.service.MentorService;
import bitcamp.java110.cms.service.ProductOrderService;
import bitcamp.java110.cms.service.ProductQnAService;

@Controller
@RequestMapping("/mypage")
public class MypageController {

  MenteeService menteeService;
  MentorService mentorService;
  CsService csService;
  ClassQnaService classQnaService;
  ProductQnAService productQnAService;
  ClassOrderService classOrderService;
  ProductOrderService productOrderSerivce;
  

  public MypageController(
      MenteeService menteeService,
      MentorService mentorService,
      CsService csService,
      ClassQnaService classQnaService,
      ProductQnAService productQnAService,
      ClassOrderService classOrderService,
      ProductOrderService productOrderService) {
   this.menteeService = menteeService;
   this.mentorService = mentorService;
   this.csService = csService;
   this.classQnaService = classQnaService;
   this.productQnAService = productQnAService;
   this.classOrderService = classOrderService;
   this.productOrderSerivce = productOrderService;
   
   
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

    List<ClassOrder> colist = classOrderService.listByMeno(4,10,5);
    model.addAttribute("colist", colist );
    
   
    
  }
  
  
  @GetMapping("menu3-1")
  public void menu3_1(Model model) {
    List<ClassOrder> colist = classOrderService.listByMeno(4,10,5);
    model.addAttribute("colist", colist );
 }
  
  @GetMapping("menu3-2")
  public void menu3_2(Model model) {
    List<ProductOrder> polist = productOrderSerivce.listByMeno(4,10,5);
    model.addAttribute("polist", polist );
    
  }
  
  @GetMapping("menu4-1")
  public void menu4_1(Model model) {
    
    List<Cs> cslist = csService.list(4, 10,5);
    
    model.addAttribute("cslist",cslist);
    
    
    
  }
  
  @GetMapping("menu4-2")
  public void menu4_2(Model model) {
    List<ClassQna> cqlist = classQnaService.classqnalist(4,10,5);
    model.addAttribute("cqlist", cqlist );
    
  }
  
  @GetMapping("menu4-3")
  public void menu4_3(Model model) {
    
  }
  
  @GetMapping("menu4-4")
  public void menu4_4(Model model) {
    List<ProductQnA> pqlist = productQnAService.listByMeno(4, 10, 5);
    model.addAttribute("pqlist", pqlist );
    
  }
  
  @GetMapping("menu4-5")
  public void menu4_5(Model model) {
    
  }
  
  @GetMapping("menu5")
  public void menu5(Model model) {
    
 List<Cs> cslist = csService.list(4, 10,5);
    
    model.addAttribute("cslist",cslist);
    
  }
  
  @GetMapping("menu6")
  public void menu6(Model model) {
    
  }
  
}


