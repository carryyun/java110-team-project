package bitcamp.java110.cms.web;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import bitcamp.java110.cms.domain.ClassPopul;
import bitcamp.java110.cms.domain.Classes;
import bitcamp.java110.cms.domain.Product;
import bitcamp.java110.cms.domain.ProductPopul;
import bitcamp.java110.cms.service.ClassPopulService;
import bitcamp.java110.cms.service.ProductPopulService;

@Controller
@RequestMapping("/mainpage")
public class MainController {

  ProductPopulService productPopulService;
  ClassPopulService classPopulService;
  ServletContext sc;

  public MainController(ProductPopulService productPopulService,
      ClassPopulService classPopulService) {
    this.productPopulService = productPopulService;
    this.classPopulService = classPopulService;
  }
  
  @GetMapping("mainpage")
  public void mainpage(Model model) {
    List<ProductPopul> pp_list = productPopulService.list();
    List<Product> pp_product=new ArrayList<>();
    for (ProductPopul p: pp_list ) {
      pp_product.add(p.getProduct());
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
    List<Classes> cp_class=new ArrayList<>();
    for (ClassPopul c: cp_list ) {
      cp_class.add(c.getClasses());
    }
    String jsonTextCls="";
    try {
      jsonTextCls = mapper.writeValueAsString( cp_class );
      model.addAttribute("cp_list", jsonTextCls );
    } catch (JsonProcessingException e) {
      System.out.println(e.getMessage());
    }
    
    

  }
  
}


