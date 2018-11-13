package bitcamp.java110.cms.web;

import java.util.List;
import javax.servlet.ServletContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import bitcamp.java110.cms.domain.BigTag;
import bitcamp.java110.cms.domain.MiddleTag;
import bitcamp.java110.cms.domain.Product;
import bitcamp.java110.cms.service.BigTagService;
import bitcamp.java110.cms.service.MiddleTagService;
import bitcamp.java110.cms.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {

  ProductService productService;
  BigTagService bigTagService;
  MiddleTagService middleTagService;
  ServletContext sc;

  public ProductController(
      ProductService productService,
      BigTagService bigTagService,
      MiddleTagService middleTagService,
      ServletContext sc) {
    this.productService = productService;
    this.bigTagService = bigTagService;
    this.middleTagService=middleTagService;
    this.sc = sc;
  }
  
  @GetMapping("prdt")
  public void prdt(Model model) {
    List<BigTag> list = bigTagService.list();
    List<MiddleTag> list2 = middleTagService.list();
    List<Product> product_list = productService.list();
    
/*    for(Product p:product_list) {
      System.out.print(p.getMentee().getName()+"/");
      System.out.print(p.getCert().getType()+"/");
      System.out.print(p.getSmalltag().getName()+"/");
      System.out.println(p.getMiddleTagName());
      System.out.println(p.getMentee().getName());
      
    }*/

    model.addAttribute("list",list);
    model.addAttribute("list2",list2);
    model.addAttribute("product_list",product_list);
    
  }

  
  @RequestMapping("P")
  public String P() {
    
    return "redirect:../product/prdt";
  }

}


