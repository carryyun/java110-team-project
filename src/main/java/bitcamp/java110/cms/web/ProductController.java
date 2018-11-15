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

  public ProductController(
      ProductService productService,
      BigTagService bigTagService,
      MiddleTagService middleTagService,
      ProductPopulService productPopulService,
      ServletContext sc) {
    this.productService = productService;
    this.bigTagService = bigTagService;
    this.middleTagService = middleTagService;
    this.productPopulService = productPopulService;
    this.productRepSerivce = productRepSerivce;
    this.sc = sc;
  }

  @GetMapping("prdt")
  public void prdt(Model model) {
    List<BigTag> BTlist = bigTagService.list();
    List<MiddleTag> MTlist = middleTagService.list();
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
      System.out.println(jsonText);

    } catch (JsonProcessingException e) {
      System.out.println(e.getMessage());
    }
/*    model.addAttribute("BTlist",BTlist);
    model.addAttribute("MTlist",MTlist);*/
    model.addAttribute("product_list",product_list);
    model.addAttribute("pp_list",jsonText);
    
  }

  @GetMapping("test")
  public void test() {
    
  }


  @GetMapping("detail")
  public void detail(Model model) {

    List<ProductRep> list = productRepSerivce.listByPtno(2);
    /*
     * for(ProductRep p : list) { System.out.println(p.getConts());
     * System.out.println(p.getMentee().getNick()); System.out.println(p.getMentee().getPhot()); }
     */
    System.out.println(productService.get(1).getStar());

    model.addAttribute("product", productService.get(1));
    // product - 웹에서 쓸 이름(아무거나 써도됨)
    model.addAttribute("list", list);
  }
  
  @RequestMapping("P")
  public String P() {
    return "redirect:../product/prdt";
  }

}


