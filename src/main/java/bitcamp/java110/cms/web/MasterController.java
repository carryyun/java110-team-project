package bitcamp.java110.cms.web;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import bitcamp.java110.cms.domain.ClassOrder;
import bitcamp.java110.cms.domain.Mentee;
import bitcamp.java110.cms.domain.Mentor;
import bitcamp.java110.cms.domain.ProductOrder;
import bitcamp.java110.cms.domain.ProductQnA;
import bitcamp.java110.cms.service.ClassOrderService;
import bitcamp.java110.cms.service.ClassService;
import bitcamp.java110.cms.service.MenteeService;
import bitcamp.java110.cms.service.MentorService;
import bitcamp.java110.cms.service.ProductOrderService;
import bitcamp.java110.cms.service.ProductPopulService;
import bitcamp.java110.cms.service.ProductService;

@Controller
@RequestMapping("/master")
public class MasterController {

  MenteeService menteeService;
  MentorService mentorService;
  ProductService productService;
  ProductPopulService productPopulService;
  ClassService classService;
  ProductOrderService productOrderService;
  ClassOrderService classOrderService;

  public MasterController(
      ProductService productService,
      ProductPopulService productPopulService,
      ClassService classService,
      MenteeService menteeService,
      MentorService mentorService,
      ProductOrderService productOrderService,
      ClassOrderService classOrderService
      ) {

    this.productService = productService;
    this.productPopulService = productPopulService;
    this.classService = classService;
    this.menteeService = menteeService;
    this.mentorService = mentorService;
    this.productOrderService = productOrderService;
    this.classOrderService = classOrderService;
  }

  @GetMapping("prodOrderList")
  public void prdt(Model model) {
    List<ProductOrder> productOrderList = productOrderService.listByMaster(3, 5);
    model.addAttribute("productOrderList", productOrderList);
    
  }
  
  @GetMapping("classOrderList")
  public void cls(Model model) {
    List<ClassOrder> classOrderList = classOrderService.listByMaster(3, 5);
    model.addAttribute("classOrderList", classOrderList);
    
  }
  
  @GetMapping("mentoradd")
  public void mentoradd(Model model) {
    Mentee mentee = menteeService.get(6);
    Mentor mentor = new Mentor();
    mentor.setNo(mentee.getNo());
    mentor.setCarr(4);
    mentor = (Mentor) mentee;
    System.out.println("닉네임>" + mentor.getNick());
//    mentorService.add(mentor);
    
    
    List<Mentee> MentorRequestList = menteeService.listByMetoStat();
    System.out.println(MentorRequestList);
    
    
    
    model.addAttribute("MentorRequestList", MentorRequestList);
  }
  
  @GetMapping("mentorlist")
  public void mentorlist(Model model) {
    List<Mentee> MentorRequestList = menteeService.listByMetoStat();
    System.out.println(MentorRequestList);
    
    
    
    model.addAttribute("MentorRequestList", MentorRequestList);
  }
  
  @RequestMapping(value = "addqna", method = RequestMethod.POST)
  public String addqna(String type, String titl, String conts) {
    ProductQnA pqna = new ProductQnA();
    pqna.setTitl(titl);
    pqna.setConts(conts);
    pqna.setType(type);
    pqna.setMeno(5);
    pqna.setPtno(5);

    return "redirect:./prdtQna";
  }
  
  
 

}

