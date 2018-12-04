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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import bitcamp.java110.cms.domain.Cert;
import bitcamp.java110.cms.domain.Classes;
import bitcamp.java110.cms.domain.Mentee;
import bitcamp.java110.cms.domain.Product;
import bitcamp.java110.cms.domain.ProductBakt;
import bitcamp.java110.cms.domain.ProductFile;
import bitcamp.java110.cms.domain.ProductPopul;
import bitcamp.java110.cms.domain.ProductQnA;
import bitcamp.java110.cms.domain.ProductRep;
import bitcamp.java110.cms.domain.SmallTag;
import bitcamp.java110.cms.service.BigTagService;
import bitcamp.java110.cms.service.CertService;
import bitcamp.java110.cms.service.ClassService;
import bitcamp.java110.cms.service.MiddleTagService;
import bitcamp.java110.cms.service.ProductBaktService;
import bitcamp.java110.cms.service.ProductFileService;
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

  ProductFileService productFileService;

  ServletContext sc;

  public ProductController(ProductService productService, BigTagService bigTagService,
      MiddleTagService middleTagService, ProductPopulService productPopulService,
      ProductRepService productRepSerivce, ClassService classService,
      ProductQnAService productQnAService, ProductBaktService productBaktService,
      CertService certService, SmallTagService smallTagService,
      ProductFileService productFileService, ServletContext sc) {

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
    this.productFileService = productFileService;
    this.sc = sc;
  }

  @GetMapping("prdt")
  public void prdt(@RequestParam(defaultValue = "1") int pageNo,
      @RequestParam(defaultValue = "12") int pageSize, Model model) {
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

  @GetMapping("prdtCate")
  public void prdt(int mtno, Model model) {
    List<Product> productList = productService.listByMtno(10, 5, mtno);


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
    System.out.println(product.getPhot());
    product.setProductFile(productFileService.listByPtno(no));
    
    List<ProductRep> replyList = productRepSerivce.listByPtno(no);
    Classes prdtcls = classService.findbyptno(no);
    List<ProductQnA> prodQnaList = productQnAService.listByPtno(3, 5, no);
    
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



  // 2018.11.28 수정 -> cert list 불러오기
  @RequestMapping(value = "getCertList.do", method = {RequestMethod.GET, RequestMethod.POST})
  public @ResponseBody List<Cert> getCertList(int no) {
    List<Cert> certList = certService.listByMeno(5, 5, no);
    return certList;
  }

  // 2018.11.23 수정 -> 18.11.28수정
  @PostMapping("prodRegister")
  public void prodRegister(Model model, HttpSession session, int mtno, int ctno) {
    Mentee loginUser = (Mentee) session.getAttribute("loginUser");
    List<Cert> certList = certService.listByMeno(5, 5, loginUser.getNo());
    model.addAttribute("certList", certList);

    List<SmallTag> stagList = smallTagService.listMtno(10, 5, mtno);
    model.addAttribute("stagList", stagList);
    model.addAttribute("ctno", ctno);
  }

//상품평 등록
  @RequestMapping(value = "addrep.do", method = {RequestMethod.GET, RequestMethod.POST})
  public @ResponseBody List<ProductRep> addrep(ProductRep productRep) {
    productRepSerivce.add(productRep);
    List<ProductRep> productRepList = productRepSerivce.listByPtno(productRep.getPtno());
    return productRepList;
  }
  
//상품평 삭제
  @RequestMapping(value = "removerep.do", method = {RequestMethod.GET, RequestMethod.POST})
  public @ResponseBody List<ProductRep> removerep(int ptno, int rno) {
    productRepSerivce.delete(rno);
    List<ProductRep> productRepList = productRepSerivce.listByPtno(ptno);
    return productRepList;
  }

  @RequestMapping(value = "addqna.do", method = {RequestMethod.GET, RequestMethod.POST})
  public @ResponseBody int addqna(ProductQnA productQnA) {
    return productQnAService.add(productQnA);
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
    
    List<ProductBakt> sumList = productBaktService.sumByMeno(mentee.getNo());
    model.addAttribute("sumList", sumList);
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

  // 2018.11.29 -> ?.?
  @PostMapping(value = "addProduct.do")
  public String addProduct(Product product, List<MultipartFile> files, HttpSession session)
      throws Exception {
    product.setPhot("temp");
    productService.add(product);
    int result = product.getNo();
    int index = 0;
    for (MultipartFile file : files) {
      if (!file.getOriginalFilename().equals("")) {
        String filename = UUID.randomUUID().toString();
        file.transferTo(new File(sc.getRealPath("/upload/img/prdtImg/" + filename + ".png")));
        String fname = "/upload/img/prdtImg/" + filename + ".png";
        System.out.println(fname);
        if (index == 0) {
          product.setPhot(fname);
          productService.update(product);
        }
        ProductFile productFile = new ProductFile();
        productFile.setPfname(fname);
        productFile.setPtno(result);

        productFileService.add(productFile);
        index++;
      }
    }
    
    return "detail?no=" + result;
  }
  
  @RequestMapping(value="payment", method = {RequestMethod.GET, RequestMethod.POST})
  public void serchProductList(Model model, HttpSession session) {
    Mentee mentee = (Mentee) session.getAttribute("loginUser");
    List<ProductBakt> paymentList = productBaktService.listAllByMeno(mentee.getNo());
    model.addAttribute("paymentList", paymentList);
    
  }
  
  @GetMapping("prdtSerch")
  public void prdtSerch(String titl,Model model) {
    System.out.println(titl);
    List<Product> serchList = productService.serchByTitl(1, 10, titl);
    
    model.addAttribute("serchList", serchList);
  }
  
}

