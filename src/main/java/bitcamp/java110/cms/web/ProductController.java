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
import bitcamp.java110.cms.domain.Classes;
import bitcamp.java110.cms.domain.Product;
import bitcamp.java110.cms.domain.ProductPopul;
import bitcamp.java110.cms.domain.ProductRep;
import bitcamp.java110.cms.service.BigTagService;
import bitcamp.java110.cms.service.ClassService;
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
  ClassService classService;

  public ProductController(ProductService productService, BigTagService bigTagService,
      MiddleTagService middleTagService, ProductPopulService productPopulService,
      ProductRepService productRepSerivce, ServletContext sc, ClassService classService) {
    this.productService = productService;
    this.bigTagService = bigTagService;
    this.middleTagService = middleTagService;
    this.productPopulService = productPopulService;
    this.productRepSerivce = productRepSerivce;
    this.classService = classService;
    this.sc = sc;
  }

  @GetMapping("prdt")
  public void prdt(Model model) {
    List<Product> productList = productService.list();

    List<ProductPopul> pp_list = productPopulService.list();
    List<Product> pp_product = new ArrayList<>();

    for (ProductPopul p : pp_list) {
      pp_product.add(p.getProduct());
    }

    for (Product ppp : productList) {
      System.out.println(ppp.getPhot());
    }

    ObjectMapper mapper = new ObjectMapper();
    String jsonText = "";
    try {

      jsonText = mapper.writeValueAsString(pp_product);
      model.addAttribute("pp_list", jsonText);
    } catch (JsonProcessingException e) {
      System.out.println(e.getMessage());
    }
    /*
     * model.addAttribute("BTlist",BTlist); model.addAttribute("MTlist",MTlist);
     */
    model.addAttribute("productList", productList);
  }

  @GetMapping("test")
  public void test() {

  }


  @GetMapping("detail")
  public void detail(Model model, int no) {
    Product product = productService.get(no);

    List<ProductRep> replyList = productRepSerivce.listByPtno(no);
    Classes prdtcls = classService.findbyptno(no);
    /*
     * for(ProductRep p : list) { System.out.println(p.getConts());
     * System.out.println(p.getMentee().getNick()); System.out.println(p.getMentee().getPhot()); }
     */


    model.addAttribute("product", product);
    // product - 웹에서 쓸 이름(아무거나 써도됨)
    model.addAttribute("replyList", replyList);
    model.addAttribute("prdtcls", prdtcls);
    /* model.addAttribute("clslist",clslist); */
  }

  @RequestMapping("P")
  public String P() {
    return "redirect:../product/prdt";
  }

}


