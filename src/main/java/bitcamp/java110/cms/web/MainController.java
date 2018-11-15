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
import bitcamp.java110.cms.domain.Product;
import bitcamp.java110.cms.domain.ProductPopul;
import bitcamp.java110.cms.service.ProductPopulService;

@Controller
@RequestMapping("/mainpage")
public class MainController {

  ProductPopulService productPopulService;
  ServletContext sc;

  public MainController(ProductPopulService productPopulService) {
    this.productPopulService = productPopulService;
  }
  
  @GetMapping("mainpage")
  public void mainpage(Model model) {
    List<ProductPopul> pp_list = productPopulService.list();
    List<Product> pp_product=new ArrayList<>();
    
    for (ProductPopul p: pp_list ) {
      pp_product.add(p.getProduct());
    }
    
    ObjectMapper mapper = new ObjectMapper();
    String jsonText="";
    try {
      jsonText = mapper.writeValueAsString( pp_product );
      model.addAttribute("pp_list", jsonText );
    } catch (JsonProcessingException e) {
      System.out.println(e.getMessage());
    }

  }

}


