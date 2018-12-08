package bitcamp.java110.cms.web;

import java.awt.AlphaComposite;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.image.BufferedImage;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.imageio.ImageIO;
import javax.imageio.stream.ImageOutputStream;
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
import bitcamp.java110.cms.domain.ClassLike;
import bitcamp.java110.cms.domain.Classes;
import bitcamp.java110.cms.domain.Mentee;
import bitcamp.java110.cms.domain.Product;
import bitcamp.java110.cms.domain.ProductBakt;
import bitcamp.java110.cms.domain.ProductFile;
import bitcamp.java110.cms.domain.ProductOrder;
import bitcamp.java110.cms.domain.ProductPopul;
import bitcamp.java110.cms.domain.ProductQnA;
import bitcamp.java110.cms.domain.ProductRep;
import bitcamp.java110.cms.domain.SmallTag;
import bitcamp.java110.cms.service.BigTagService;
import bitcamp.java110.cms.service.CertService;
import bitcamp.java110.cms.service.ClassBaktService;
import bitcamp.java110.cms.service.ClassLikeService;
import bitcamp.java110.cms.service.ClassService;
import bitcamp.java110.cms.service.MiddleTagService;
import bitcamp.java110.cms.service.ProductBaktService;
import bitcamp.java110.cms.service.ProductFileService;
import bitcamp.java110.cms.service.ProductOrderService;
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
  ClassLikeService classlikeService;
  
  ProductOrderService productOrderService;
  ClassBaktService classBaktService;
  
  public ProductController(ProductService productService, BigTagService bigTagService,
      MiddleTagService middleTagService, ProductPopulService productPopulService,
      ProductRepService productRepSerivce, ClassService classService,
      ProductQnAService productQnAService, ProductBaktService productBaktService,
      CertService certService, SmallTagService smallTagService,
      ProductFileService productFileService, ServletContext sc,
      ClassLikeService classlikeService, ProductOrderService productOrderService
      ) {

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
    this.classlikeService =classlikeService;
    this.productOrderService = productOrderService;
  }

  @GetMapping("prdt")
  public void prdt(@RequestParam(defaultValue = "1") int pageNo,
      @RequestParam(defaultValue = "12") int pageSize, Model model) {
    List<Product> productList = productService.list();
    List<Product> hotItemlists = productService.hotItemlist();
    List<ProductPopul> pp_list = productPopulService.list();
    List<ProductPopul> pp_product = new ArrayList<>();
    List<Product> hotItemlist = new ArrayList<>();
    for(int x=0; x<5; x++) {
      hotItemlist.add(hotItemlists.get(x));
    }
    System.out.println(hotItemlist);
    model.addAttribute("hotItemlist", hotItemlist);
    
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
  public void detail(Model model, int no,
      @RequestParam(defaultValue = "1") int pageNo,
      @RequestParam(defaultValue = "5") int pageSize) {
    
    Product product = productService.get(no);
    Classes detailclass = classService.findBycno(product.getClasses().getNo());
    System.out.println(product.getPhot());
    product.setProductFile(productFileService.listByPtno(no));
    
    List<ProductRep> replyList = productRepSerivce.listByPtno(pageNo,pageSize,no);
    Classes prdtcls = classService.findbyptno(no);
    List<ProductQnA> prodQnaList = productQnAService.listByPtno(pageNo, pageSize, no);
    
    List<ProductQnA> countQna = productQnAService.listByPtno(1, 200, no);
    int countqna = countQna.size()/5;
    if(countQna.size()%5 >0) countqna++;
    model.addAttribute("countqna", countqna);
    
    List<ProductRep> forRepSize = productRepSerivce.listByPtno(1,200,no);
    int repPageSize = forRepSize.size()/5;
    if(forRepSize.size()%5 > 0) repPageSize++;
    model.addAttribute("repCnt", forRepSize.size());
    model.addAttribute("repPageSize", repPageSize);
    
    model.addAttribute("product", product);
    model.addAttribute("replyList", replyList);
    model.addAttribute("prdtcls", prdtcls);
    model.addAttribute("prodQnaList", prodQnaList);
    model.addAttribute("detailclass",detailclass);
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
  
  @GetMapping("prodUpdate")
  public void prodUpdate(Model model, HttpSession session, int no) {
    Product product = productService.get(no);
    List<ProductFile> productFiles = productFileService.listByPtno(product.getNo());
    int FileLength = productFiles.size();
    List<SmallTag> stagList = smallTagService.listMtno(10, 5, product.getStno());
    
    model.addAttribute("FileLength", FileLength);
    model.addAttribute("stagList", stagList);
    model.addAttribute("productFiles", productFiles);
    model.addAttribute("product", product);
  }

//상품평 등록
  @RequestMapping(value = "addrep.do", method = {RequestMethod.GET, RequestMethod.POST})
  public @ResponseBody List<ProductRep> addrep(
      @RequestParam(defaultValue = "1") int pageNo,
      @RequestParam(defaultValue = "5") int pageSize,ProductRep productRep) {
    productRepSerivce.add(productRep);
    List<ProductRep> productRepList = productRepSerivce.listByPtno(pageNo,pageSize,productRep.getPtno());
    return productRepList;
  }
  
//상품평 삭제
  @RequestMapping(value = "removerep.do", method = {RequestMethod.GET, RequestMethod.POST})
  public @ResponseBody List<ProductRep> removerep(int ptno,
      @RequestParam(defaultValue = "1") int pageNo,
      @RequestParam(defaultValue = "5") int pageSize, int rno) {
    productRepSerivce.delete(rno);
    List<ProductRep> productRepList = productRepSerivce.listByPtno(pageNo,pageSize,ptno);
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
  
  // 팝업용 창닫기 jsp
  @GetMapping("addProductAfter")
  public void addProductAfter() {
    
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
        /*BufferedImage img = ImageIO.read(new File(sc.getRealPath("/upload/img/prdtImg/" + filename + ".png")));
        int type = img.getType() == 0 ? BufferedImage.TYPE_INT_ARGB : img.getType();
        BufferedImage resizeImage = resizeImageWithHint(img, type);
        
        ImageIO.write(resizeImage,"png", new File("/upload/img/prdtImg/" + filename + ".png"));*/

        String fname = "/upload/img/prdtImg/" + filename + ".png";
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
    
    return "redirect:addProductAfter";
  }
/*  private static BufferedImage resizeImageWithHint(BufferedImage originalImage, int type) {
    
    BufferedImage resizedImage = new BufferedImage(400, 300, type);
    Graphics2D g = resizedImage.createGraphics();
    g.drawImage(originalImage, 0, 0, 400, 300, null);
    g.dispose();
    g.setComposite(AlphaComposite.Src);
 
    g.setRenderingHint(RenderingHints.KEY_INTERPOLATION,
        RenderingHints.VALUE_INTERPOLATION_BILINEAR);
    g.setRenderingHint(RenderingHints.KEY_RENDERING, RenderingHints.VALUE_RENDER_QUALITY);
    g.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
 
    return resizedImage;
  }*/
  
  @PostMapping(value = "updateProduct.do")
  public String updateProductdo(Product product, List<MultipartFile> files, String deleteFile, HttpSession session)
      throws Exception {
    productService.update(product);
    int result = product.getNo();
    
    System.out.println(product);
    System.out.println(deleteFile);
    String[] str = deleteFile.split("&");
    for(String s:str) {
      ProductFile profile = new ProductFile();
      profile.setPfname(s);
      profile.setPtno(result);
      productFileService.delete(profile);
    }
    
    int index = 0;
    for (MultipartFile file : files) {
      if (!file.getOriginalFilename().equals("")) {
        String filename = UUID.randomUUID().toString();
        file.transferTo(new File(sc.getRealPath("/upload/img/prdtImg/" + filename + ".png")));
        String fname = "/upload/img/prdtImg/" + filename + ".png";
        System.out.println(fname);
        ProductFile productFile = new ProductFile();
        productFile.setPfname(fname);
        productFile.setPtno(result);

        productFileService.add(productFile);
        index++;
      }
    }
    
    return "detail?no=" + result;
  }
  @GetMapping("updatestat")
  public String updatestat(int no, String stat) {
    Product product = new Product();
    product.setNo(no);
    product.setStat(stat);
    productService.updatestat(product);
    return "redirect:prdt";
  }
  
  @GetMapping("prdtSerch")
  public void prdtSerch(String titl,Model model) {
    System.out.println(titl);
    List<Product> serchList = productService.serchByTitl(1, 10, titl);
    
    model.addAttribute("serchList", serchList);
  }
  
  
 @RequestMapping(value = "clslikeins.do", method = {RequestMethod.POST})
  public @ResponseBody String clslikeins(ClassLike classlike) {
    
    System.out.println(classlike.getMeno());
    System.out.println(classlike.getCno());
    classlikeService.likeadd(classlike);
    
    return "redirect:detail?no="+classlike.getCno();
  }
 
 /*상품장바구니*/
  @RequestMapping(value = "prodBaskt.do", method = {RequestMethod.POST})
  public @ResponseBody String prodBaskt(ProductBakt productBakt) {
    
    productBaktService.add(productBakt);
    
    return "redirect:detail?no="+productBakt.getNo();
  }
  
  @RequestMapping(value = "addProdOrder.do", method = {RequestMethod.POST})
  public @ResponseBody String addOrderdo(String[] arr) {
    
    for(String s : arr) {
      String[] str = s.split("&");
      
      ProductBakt productBakt = new ProductBakt();
      productBakt.setNo(Integer.parseInt(str[0]));
      productBakt.setPtno(Integer.parseInt(str[1]));
      productBakt.setMeno(Integer.parseInt(str[2]));
      productBakt.setCnt(Integer.parseInt(str[3]));
      productBaktService.delete(productBakt.getNo());
      
      Product product = new Product();
      product = productService.get(productBakt.getPtno());
      
      ProductOrder order = new ProductOrder();
      order.setMeno(productBakt.getMeno());
      order.setPtno(productBakt.getPtno());
      order.setCnt(productBakt.getCnt());
      order.setTot_pric(product.getPric()*order.getCnt());
      order.setPayopt(str[4]);
      
      productOrderService.add(order);
      }
    return "complete";
  }
  
  
  @RequestMapping(value = "repLoad.do", method = {RequestMethod.GET, RequestMethod.POST})
  public @ResponseBody List<ProductRep> repLoaddo(int ptno,
      @RequestParam(defaultValue = "1") int pageNo,
      @RequestParam(defaultValue = "5") int pageSize) {
    List<ProductRep> productRepList = productRepSerivce.listByPtno(pageNo,pageSize,ptno);
    return productRepList;
  }
  
  @RequestMapping(value = "qnaLoad.do", method = {RequestMethod.GET, RequestMethod.POST})
  public @ResponseBody List<ProductQnA> qnaLoaddo(int ptno,
      @RequestParam(defaultValue = "1") int pageNo,
      @RequestParam(defaultValue = "5") int pageSize) {
    List<ProductQnA> productQnaList = productQnAService.listByPtno(pageNo,pageSize,ptno);
    
    return productQnaList;
  }
  
  
}

