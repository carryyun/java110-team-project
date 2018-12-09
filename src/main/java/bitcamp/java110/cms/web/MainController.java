package bitcamp.java110.cms.web;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import bitcamp.java110.cms.domain.ClassLike;
import bitcamp.java110.cms.domain.ClassPopul;
import bitcamp.java110.cms.domain.Mentee;
import bitcamp.java110.cms.domain.ProductPopul;
import bitcamp.java110.cms.service.ClassLikeService;
import bitcamp.java110.cms.service.ClassPopulService;
import bitcamp.java110.cms.service.ClassRepService;
import bitcamp.java110.cms.service.ProductPopulService;
import bitcamp.java110.cms.service.ProductRepService;

@Controller
@RequestMapping("/mainpage")
public class MainController {

  ProductPopulService productPopulService;
  ClassPopulService classPopulService;
  ClassLikeService classLikeService;
  ServletContext sc;
  
  ClassRepService classRepService;
  ProductRepService productRepService;

  public MainController(ProductPopulService productPopulService,
      ClassPopulService classPopulService, ClassLikeService classLikeService,
      ClassRepService classRepService, ProductRepService productRepService) {
    this.productPopulService = productPopulService;
    this.classPopulService = classPopulService;
    this.classLikeService = classLikeService;
    this.classRepService = classRepService;
    this.productRepService = productRepService;
  }
  
  @GetMapping("mainpage")
  public void mainpage(Model model, HttpSession session) {
    List<ProductPopul> pp_list = productPopulService.list();
    List<ProductPopul> pp_product=new ArrayList<>();
    for (ProductPopul p: pp_list ) {
      pp_product.add(p);
    }
    ObjectMapper mapper = new ObjectMapper();
    String jsonTextPrdt="";
    try {
      jsonTextPrdt = mapper.writeValueAsString( pp_product );
      model.addAttribute("pp_list", jsonTextPrdt );
    } catch (JsonProcessingException e) {
      System.out.println(e.getMessage());
    }
    
    
    
    List<ClassPopul> cp_list = classPopulService.list();
    List<ClassPopul> cp_class=new ArrayList<>();
    for (ClassPopul c: cp_list ) {
      cp_class.add(c);
    }
    String jsonTextCls="";
    try {
      jsonTextCls = mapper.writeValueAsString( cp_class );
      model.addAttribute("cp_list", jsonTextCls );
    } catch (JsonProcessingException e) {
      System.out.println(e.getMessage());
    }
    
    Mentee loginUser = (Mentee) session.getAttribute("loginUser");
    if(loginUser != null) {
      List<ClassLike> clike_popul = classLikeService.listByMeno(loginUser.getNo());
      System.out.println("실행");
      model.addAttribute("clike_popul", clike_popul );
      for(ClassLike c : clike_popul) {
        System.out.println(c.getCno());
      }
    }
    
    
    
  }
  
  
}


