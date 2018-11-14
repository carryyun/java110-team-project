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
import bitcamp.java110.cms.domain.BigTag;
import bitcamp.java110.cms.domain.MiddleTag;
import bitcamp.java110.cms.domain.Product;
import bitcamp.java110.cms.domain.ProductPopul;
import bitcamp.java110.cms.service.BigTagService;
import bitcamp.java110.cms.service.MiddleTagService;
import bitcamp.java110.cms.service.ProductPopulService;
import bitcamp.java110.cms.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {

  ProductService productService;
  ProductPopulService productPopulService;
  BigTagService bigTagService;
  MiddleTagService middleTagService;
  ServletContext sc;

  public ProductController(
      ProductService productService,
      BigTagService bigTagService,
      MiddleTagService middleTagService,
      ProductPopulService productPopulService,
      ServletContext sc) {
    this.productService = productService;
    this.bigTagService = bigTagService;
    this.middleTagService=middleTagService;
    this.productPopulService=productPopulService;
    this.sc = sc;
  }
  
  @GetMapping("prdt")
  public void prdt(Model model) {
    List<BigTag> list = bigTagService.list();
    List<MiddleTag> list2 = middleTagService.list();
    List<Product> product_list = productService.list();
    
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
    

    model.addAttribute("list",list);
    model.addAttribute("list2",list2);
    model.addAttribute("product_list",product_list);
    model.addAttribute("pp_list",jsonText);
    
  }

  
  @RequestMapping("P")
  public String P() {
    return "redirect:../product/prdt";
  }

}


