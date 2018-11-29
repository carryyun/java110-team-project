package bitcamp.java110.cms.web;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import bitcamp.java110.cms.domain.Cert;
import bitcamp.java110.cms.domain.Classes;
import bitcamp.java110.cms.domain.Mentee;
import bitcamp.java110.cms.domain.Product;
import bitcamp.java110.cms.domain.ProductBakt;
import bitcamp.java110.cms.domain.ProductPopul;
import bitcamp.java110.cms.domain.ProductQnA;
import bitcamp.java110.cms.domain.ProductRep;
import bitcamp.java110.cms.domain.SmallTag;
import bitcamp.java110.cms.service.BigTagService;
import bitcamp.java110.cms.service.CertService;
import bitcamp.java110.cms.service.ClassService;
import bitcamp.java110.cms.service.MiddleTagService;
import bitcamp.java110.cms.service.ProductBaktService;
import bitcamp.java110.cms.service.ProductPopulService;
import bitcamp.java110.cms.service.ProductQnAService;
import bitcamp.java110.cms.service.ProductRepService;
import bitcamp.java110.cms.service.ProductService;
import bitcamp.java110.cms.service.SmallTagService;

@Controller
@RequestMapping("/product")
public class ProductController {

  ProductService productService;
  ProductPopulService productPopulService;
  BigTagService bigTagService;
  MiddleTagService middleTagService;
  ProductRepService productRepSerivce;
  ClassService classService;
  ProductQnAService productQnAService;
  ProductBaktService productBaktService;
  CertService certService;
  SmallTagService smallTagService;

  ServletContext sc;

  public ProductController(ProductService productService, BigTagService bigTagService,
      MiddleTagService middleTagService, ProductPopulService productPopulService,
      ProductRepService productRepSerivce, ClassService classService,
      ProductQnAService productQnAService, ProductBaktService productBaktService,
      CertService certService, SmallTagService smallTagService, ServletContext sc) {

    this.productService = productService;
    this.bigTagService = bigTagService;
    this.middleTagService = middleTagService;
    this.productPopulService = productPopulService;
    this.productRepSerivce = productRepSerivce;
    this.classService = classService;
    this.productQnAService = productQnAService;
    this.productBaktService = productBaktService;
    this.certService = certService;
    this.smallTagService = smallTagService;
    this.sc = sc;
  }

  @GetMapping("prdt")
  public void prdt(Model model) {
    List<Product> productList = productService.list();

    List<ProductPopul> pp_list = productPopulService.list();
    List<ProductPopul> pp_product = new ArrayList<>();

    for (ProductPopul p : pp_list) {

      pp_product.add(p);
    }

    ObjectMapper mapper = new ObjectMapper();
    String jsonText = "";
    try {

      jsonText = mapper.writeValueAsString(pp_product);
      model.addAttribute("pp_list", jsonText);
    } catch (JsonProcessingException e) {
      System.out.println(e.getMessage());
    }

    model.addAttribute("productList", productList);
  }



  @GetMapping("detail")
  public void detail(Model model, int no) {
    Product product = productService.get(no);

    List<ProductRep> replyList = productRepSerivce.listByPtno(no);
    Classes prdtcls = classService.findbyptno(no);
    List<ProductQnA> prodQnaList = productQnAService.listByPtno(3, 5, no);


    /*
     * for(ProductRep p : list) { System.out.println(p.getConts());
     * System.out.println(p.getMentee().getNick()); System.out.println(p.getMentee().getPhot()); }
     */

    model.addAttribute("product", product);
    // product - 웹에서 쓸 이름(아무거나 써도됨)
    model.addAttribute("replyList", replyList);
    model.addAttribute("prdtcls", prdtcls);
    model.addAttribute("prodQnaList", prodQnaList);
    /* model.addAttribute("clslist",clslist); */
  }


  @GetMapping("prdtQna")
  public void prdtQna() {

  }

  // 2018.11.27 수정 -> file input
  @PostMapping("test")
  public void test(Product product, List<MultipartFile> files) throws Exception {

    for (MultipartFile file : files) {
      if (!file.getOriginalFilename().equals("")) {
        System.out.println(file.getOriginalFilename());

        String filename = UUID.randomUUID().toString();
        file.transferTo(new File(sc.getRealPath("/upload/img/test/" + filename + ".png")));
      }
    }
    System.out.println(product);
  }

  // 2018.11.28 수정 -> cert list 불러오기
  @RequestMapping(value = "getCertList.do", method = {RequestMethod.GET, RequestMethod.POST})
  public @ResponseBody List<Cert> getCertList(int no) {
    List<Cert> certList = certService.listByMeno(5, 5, no);
    return certList;
  }

  // 2018.11.23 수정 -> 18.11.28수정
  @PostMapping("prodRegister")
  public void prodRegister(Model model, HttpSession session, int mtno) {
    Mentee loginUser = (Mentee) session.getAttribute("loginUser");
    List<Cert> certList = certService.listByMeno(5, 5, loginUser.getNo());
    model.addAttribute("certList", certList);

    List<SmallTag> stagList = smallTagService.listMtno(10, 5, mtno);
    model.addAttribute("stagList", stagList);
  }



  @RequestMapping(value = "addqna", method = RequestMethod.POST)
  public String addqna(String type, String titl, String conts) {
    ProductQnA pqna = new ProductQnA();
    pqna.setTitl(titl);
    pqna.setConts(conts);
    pqna.setType(type);
    pqna.setMeno(5);
    pqna.setPtno(5);


    productQnAService.add(pqna);
    return "redirect:../product/prdtQna";
  }

  /*
   * 장바구니 관련 시작
   */
  @GetMapping("basket")
  public void basketproduct(Model model, HttpSession session) {
    Mentee mentee = (Mentee) session.getAttribute("loginUser");
    List<ProductBakt> basketList = productBaktService.listAllByMeno(mentee.getNo());
    int total = 0;
    for (ProductBakt pb : basketList) {
      total += pb.getProduct().getPric();
    }

    model.addAttribute("total", total);
    model.addAttribute("basketList", basketList);
  }

  @ResponseBody
  @RequestMapping("removeDate")
  public String removeDate(int no) throws Exception {
    productBaktService.delete(no);
    return "redirect:basketproduct";
  }
  // 장바구니 관련 끝

  @GetMapping("payment")
  public void paymentProduct(Model model, HttpSession session) {
    Mentee mentee = (Mentee) session.getAttribute("loginUser");
    List<ProductBakt> paymentList = productBaktService.listAllByMeno(mentee.getNo());
    model.addAttribute("paymentList", paymentList);

  }

}

