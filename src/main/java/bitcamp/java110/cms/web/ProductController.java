package bitcamp.java110.cms.web;

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
import bitcamp.java110.cms.domain.ProductRep;
import bitcamp.java110.cms.service.BigTagService;
import bitcamp.java110.cms.service.MiddleTagService;
import bitcamp.java110.cms.service.ProductPopulService;
import bitcamp.java110.cms.service.ProductRepService;
import bitcamp.java110.cms.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {

  ProductService productService;
  ProductPopulService productPopulService;
  BigTagService bigTagService;
  MiddleTagService middleTagService;
  ProductRepService productRepSerivce;
  ServletContext sc;

  public ProductController(ProductService productService, BigTagService bigTagService,
      MiddleTagService middleTagService, ProductPopulService productPopulService,
      ProductRepService productRepSerivce, ServletContext sc) {
    this.productService = productService;
    this.bigTagService = bigTagService;
    this.middleTagService = middleTagService;
    this.productPopulService = productPopulService;
    this.productRepSerivce = productRepSerivce;
    this.sc = sc;
  }

  @GetMapping("prdt")
  public void prdt(Model model) {
    List<BigTag> list = bigTagService.list();
    List<MiddleTag> list2 = middleTagService.list();
    List<Product> product_list = productService.list();
    List<ProductPopul> pp_list = productPopulService.list();


    ObjectMapper mapper = new ObjectMapper();
    String jsonText;
    try {
      jsonText = mapper.writeValueAsString(list);
      model.addAttribute("pp_list", pp_list);
      System.out.println(jsonText);
    } catch (JsonProcessingException e) {
      System.out.println(e.getMessage());
    }


    model.addAttribute("list", list);
    model.addAttribute("list2", list2);
    model.addAttribute("product_list", product_list);

  }

  @GetMapping("detail")
  public void detail(Model model) {

    List<ProductRep> replyList = productRepSerivce.listByPtno(2);
    /*
     * for(ProductRep p : list) { System.out.println(p.getConts());
     * System.out.println(p.getMentee().getNick()); System.out.println(p.getMentee().getPhot()); }
     */


    model.addAttribute("product", productService.get(1));
    // product - 웹에서 쓸 이름(아무거나 써도됨)
    model.addAttribute("replyList", replyList);
  }


  @RequestMapping("P")
  public String P() {
    return "redirect:../product/prdt";
  }

}


