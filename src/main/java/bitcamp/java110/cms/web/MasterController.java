package bitcamp.java110.cms.web;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import bitcamp.java110.cms.domain.ClassOrder;
import bitcamp.java110.cms.domain.Classes;
import bitcamp.java110.cms.domain.Mentee;
import bitcamp.java110.cms.domain.Mentor;
import bitcamp.java110.cms.domain.Notice;
import bitcamp.java110.cms.domain.Product;
import bitcamp.java110.cms.domain.ProductOrder;
import bitcamp.java110.cms.domain.Report;
import bitcamp.java110.cms.service.BigTagService;
import bitcamp.java110.cms.service.ClassOrderService;
import bitcamp.java110.cms.service.ClassService;
import bitcamp.java110.cms.service.MenteeService;
import bitcamp.java110.cms.service.MentorFileService;
import bitcamp.java110.cms.service.MentorLicenseService;
import bitcamp.java110.cms.service.MentorService;
import bitcamp.java110.cms.service.NoticeService;
import bitcamp.java110.cms.service.ProductOrderService;
import bitcamp.java110.cms.service.ProductPopulService;
import bitcamp.java110.cms.service.ProductService;
import bitcamp.java110.cms.service.ReportService;

@Controller
@RequestMapping("/master")
public class MasterController {

  MenteeService menteeService;
  MentorService mentorService;
  ProductService productService;
  ProductPopulService productPopulService;
  ClassService classService;
  ProductOrderService productOrderService;
  ClassOrderService classOrderService;
  BigTagService bigTagService;
  MentorFileService mentorFileService;
  MentorLicenseService mentorlicenseService;
  ReportService reportService;

  
  NoticeService noticeService;
  public MasterController(
      ProductService productService,
      ProductPopulService productPopulService,
      ClassService classService,
      MenteeService menteeService, 
      MentorService mentorService,
      ProductOrderService productOrderService, 
      ClassOrderService classOrderService,
      MentorFileService mentorFileService, 
      MentorLicenseService mentorlicenseService,
      BigTagService bigTagService,
      ReportService reportService,
      NoticeService noticeService
      ) {

    this.productService = productService;
    this.productPopulService = productPopulService;
    this.classService = classService;
    this.menteeService = menteeService;
    this.mentorService = mentorService;
    this.productOrderService = productOrderService;
    this.classOrderService = classOrderService;
    this.mentorFileService = mentorFileService;
    this.mentorlicenseService = mentorlicenseService;
    this.bigTagService = bigTagService;
    this.reportService = reportService;
    
    this.noticeService = noticeService;
  }
  
  

  @GetMapping("prdtList")
  public void prdtList(Model model){
    List<Product> findAllByList = productService.findAllByList();
    model.addAttribute("findAllByList",findAllByList);
    
  }
  
  @GetMapping("classList")
  public void classList(Model model) {
    List<Classes> findAllByList = classService.findAllByList();
    model.addAttribute("findAllByList", findAllByList);
  }
  
  @GetMapping("prodOrderList")
  public void prdt(Model model) {
    List<ProductOrder> productOrderList = productOrderService.listByMaster(3, 5);
    model.addAttribute("productOrderList", productOrderList);

  }

  @GetMapping("classOrderList")
  public void cls(Model model) {
    List<ClassOrder> classOrderList = classOrderService.listByMaster(3, 5);
    model.addAttribute("classOrderList", classOrderList);
  }

  /*
   * 멘토신청목록 관련
   */

  @RequestMapping(value = "mtstat.do", method = {RequestMethod.GET, RequestMethod.POST})
  public @ResponseBody int mtstat(int meno, char stat) {
    Mentee mentee = menteeService.get(meno);
    mentee.setMtstat(stat);
    return menteeService.updateMtstat(mentee);
  }
  
  // 181121 고친거
  @RequestMapping(value = "reptstat.do", method = {RequestMethod.GET, RequestMethod.POST})
  public @ResponseBody int reptstat(int rtno, char stat) {
    Report report = reportService.get(rtno);
    report.setStat(stat);
    return reportService.updateReptstat(report);
  }

  @GetMapping("mentorreqlist")
  public void mentorlist(Model model) {
    List<Mentor> MentorRequestList = mentorService.listByMetoStat();
    for (Mentor m : MentorRequestList) {
      m.setMentorFile(mentorFileService.get(m.getNo()));
      m.setMentorLicense(mentorlicenseService.get(m.getNo()));
      m.setMentorTag(bigTagService.listByMono(m.getNo()));
    }
    model.addAttribute("MentorRequestList", MentorRequestList);
  }

  /*
   * 클래스신청목록 관련
   */

  @GetMapping("classreqlist")
  public void classlist(Model model) {
    List<Classes> ClassRequestList = classService.listByStat("I");

    model.addAttribute("ClassRequestList", ClassRequestList);
  }

  /*
   * 신고목록 관련(미완성)
  */
  @GetMapping("report")
  public void report() {
    
  }
  
  @GetMapping("reportFinishList")
  public void reportFinishList(Model model) {
    List<Report> ReportList = reportService.finishlist(3, 3);
    for(Report r: ReportList) {
      r.setCnt(reportService.getMeno2Cnt(r.getMeno2()));
      r.setFinishlist(reportService.listByMeno2(3, 3, r.getMeno2()));
    }
    model.addAttribute("ReportList",ReportList);
  }
  
  @GetMapping("reportList")
  public void reportList(Model model) {
    List<Report> ReportList = reportService.listByStat(10, 3);
    for(Report r: ReportList) {
      r.setCnt(reportService.getMeno2Cnt(r.getMeno2()));
    }
    model.addAttribute("ReportList",ReportList);
  }
  @RequestMapping(value = "reptchecknick.do", method = { RequestMethod.GET, RequestMethod.POST})
  public @ResponseBody int checkByNick(Mentee mentee) {
    return menteeService.checkByNick(mentee);
  }
  
  @RequestMapping(value = "addreport.do", method = {RequestMethod.GET, RequestMethod.POST})
  public @ResponseBody int addRept(Report report, String nick) {
    Mentee mentee = menteeService.getByNick(nick);
    report.setMeno2(mentee.getNo());
    return reportService.add(report);
  }
  
  
  /*
   * 사용자 알림 (추후 mypage폴더로 이동시켜야함)
   */
  
  @GetMapping("notice")
  public void notice(Model model ,HttpSession session) {
    Mentee loginUser = (Mentee)session.getAttribute("loginUser");
    List<Notice> noticeList = noticeService.listByMeno(5, 5, loginUser.getNo());
    for(Notice n : noticeList) {
      if(n.getType().equals("상품")) {
        n.setPhot(productService.get(n.getUrlno()).getPhot());
        n.setTitl(productService.get(n.getUrlno()).getTitl());
      }else if(n.getType().equals("클래스")) {
        n.setPhot(classService.findBycno(n.getUrlno()).getCfile());
        n.setTitl(classService.findBycno(n.getUrlno()).getTitl());
      }
    }
    model.addAttribute("noticeList", noticeList);
  }
  @RequestMapping(value = "notiRemove.do", method = {RequestMethod.GET, RequestMethod.POST})
  public @ResponseBody int notiRemove(int no) {
    return noticeService.remove(no);
  }
  
  /*
   * 차단목록 관련(미완성)
  */
  
  @GetMapping("blacklist")
  public void blacklist(Model model) {
    
  }
  
  @GetMapping("dashBoard")
  public void dashBoard(Model model) {
      List<Classes> ClassesFindAll = classService.findAllByList();
      model.addAttribute("ClassesFindAll",ClassesFindAll);
      
      List<Product> ProductFindAll = productService.findAllByList();
      model.addAttribute("ProductFindAll", ProductFindAll);
      
      List<Mentor> MentorFindAll = mentorService.listByMetoStat();
      for(Mentor m : MentorFindAll) {
        m.setMentorTag(bigTagService.listByMono(m.getNo()));
        
      }
      model.addAttribute("MentorFindAll",MentorFindAll);
      
      List<Report> ReportFindAll = reportService.list(3, 3);
      model.addAttribute("ReportFindAll",ReportFindAll);
      
    
  }// dashBoard end
  
  
}

