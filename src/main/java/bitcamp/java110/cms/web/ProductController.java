package bitcamp.java110.cms.web;

import java.util.List;
import javax.servlet.ServletContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import bitcamp.java110.cms.domain.BigTag;
import bitcamp.java110.cms.domain.MiddleTag;
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
    
/*    for(MiddleTag m:list2) {
      System.out.println(m.getNo() + " ");
      System.out.println(m.getName() + " ");
      System.out.println(m.getBtno() + " ");
      System.out.println(m.getBigTag().getNo() + " ");
      System.out.println(m.getBigTag().getName());
    }*/
    model.addAttribute("list",list);
    model.addAttribute("list2",list2);
    
  }

  
  @RequestMapping("P")
  public String P() {
    
    return "redirect:../product/prdt";
  }

}


