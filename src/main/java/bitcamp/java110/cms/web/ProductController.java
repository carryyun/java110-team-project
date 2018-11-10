package bitcamp.java110.cms.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import bitcamp.java110.cms.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {

  ProductService productService;

  public ProductController(
      ProductService productService) {
    this.productService = productService;
  }
  
  @GetMapping("prdt")
  public void prdt() {
  }
  @GetMapping("headerNav")
  public void headerNav() {
  }
  
  @RequestMapping("P")
  public String P() {
    
    return "redirect:../product/prdt";
  }

}


