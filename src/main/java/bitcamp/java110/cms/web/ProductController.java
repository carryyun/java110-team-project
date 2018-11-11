package bitcamp.java110.cms.web;

import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import bitcamp.java110.cms.domain.BigTag;
import bitcamp.java110.cms.service.BigTagService;
import bitcamp.java110.cms.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {

  ProductService productService;
  BigTagService bigTagService;
  ServletContext sc;

  public ProductController(
      ProductService productService,
      BigTagService bigTagService,
      ServletContext sc) {
    this.productService = productService;
    this.bigTagService = bigTagService;
    this.sc = sc;
  }
  
  @GetMapping("prdt")
  public void prdt(Model model) {
    List<BigTag> list = bigTagService.list();
    for(BigTag b : list) {
      System.out.print(b.getNo() + ":");
      System.out.println(b.getName());
    }
    model.addAttribute("list",list);
  }

  
  @RequestMapping("P")
  public String P() {
    
    return "redirect:../product/prdt";
  }

}


