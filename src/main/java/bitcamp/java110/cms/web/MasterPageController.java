package bitcamp.java110.cms.web;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import bitcamp.java110.cms.domain.BigTag;
import bitcamp.java110.cms.domain.Cert;
import bitcamp.java110.cms.domain.ClassFile;
import bitcamp.java110.cms.domain.ClassOrder;
import bitcamp.java110.cms.domain.Classes;
import bitcamp.java110.cms.domain.Cs;
import bitcamp.java110.cms.domain.Mentee;
import bitcamp.java110.cms.domain.Mentor;
import bitcamp.java110.cms.domain.Notice;
import bitcamp.java110.cms.domain.Product;
import bitcamp.java110.cms.domain.ProductOrder;
import bitcamp.java110.cms.domain.Report;
import bitcamp.java110.cms.domain.Timetable;
import bitcamp.java110.cms.service.BigTagService;
import bitcamp.java110.cms.service.CertService;
import bitcamp.java110.cms.service.ClassFileService;
import bitcamp.java110.cms.service.ClassOrderService;
import bitcamp.java110.cms.service.ClassService;
import bitcamp.java110.cms.service.CsService;
import bitcamp.java110.cms.service.MenteeService;
import bitcamp.java110.cms.service.MentorFileService;
import bitcamp.java110.cms.service.MentorLicenseService;
import bitcamp.java110.cms.service.MentorService;
import bitcamp.java110.cms.service.NoticeService;
import bitcamp.java110.cms.service.ProductOrderService;
import bitcamp.java110.cms.service.ProductPopulService;
import bitcamp.java110.cms.service.ProductService;
import bitcamp.java110.cms.service.ReportService;
import bitcamp.java110.cms.service.TimetableService;

@Controller
@RequestMapping("/masterpage")
public class MasterPageController {

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
  CsService csService;
  ClassFileService classFileService;
  TimetableService timetableService;
  CertService certService;
  

  public MasterPageController(
      MenteeService menteeService,
      MentorService mentorService,
      ProductService productService,
      ProductPopulService productPopulService,
      ClassService classService,
      ProductOrderService productOrderService,
      ClassOrderService classOrderService,
      BigTagService bigTagService,
      MentorFileService mentorFileService,
      MentorLicenseService mentorlicenseService,
      ReportService reportService,
      NoticeService noticeService,
      CsService csService,
      ClassFileService classFileService,
      TimetableService timetableService,
      CertService certService) {
    
   this.menteeService = menteeService;
   this.mentorService = mentorService;
   this.productService = productService;
   this.productPopulService = productPopulService;
   this.classService = classService;
   this.productOrderService = productOrderService;
   this.classOrderService = classOrderService;
   this.bigTagService = bigTagService;
   this.mentorFileService = mentorFileService;
   this.mentorlicenseService = mentorlicenseService;
   this.reportService = reportService;
   this.noticeService = noticeService;
   this.csService = csService;
   
   this.classFileService = classFileService;
   this.timetableService = timetableService;
   
   this.certService = certService;
  }
  
  @GetMapping("dashBoard")
  public void dashBoard(Model model,@RequestParam(defaultValue="1") int pageNo, 
      @RequestParam(defaultValue="10") int pageSize) {
      List<Classes> ClassesFindAll = classService.findByStat(1, 3);
      model.addAttribute("ClassesFindAll",ClassesFindAll);
//      
//      List<Product> findAllByList = productService.findAllByList(3,3);
//      model.addAttribute("findAllByList",findAllByList);
      
      
      List<Mentor> MentorFindAll = mentorService.listByMetoStat(pageNo,pageSize);
      for(Mentor m : MentorFindAll) {
        m.setMentorTag(bigTagService.listByMono(m.getNo()));
        
      }
      model.addAttribute("MentorFindAll",MentorFindAll);
      
      List<Report> ReportFindAll = reportService.list(3, 3);
      model.addAttribute("ReportFindAll",ReportFindAll);
      
    
  }// dashBoard end
  

  @GetMapping("prdtList")
  public void prdtList(Model model,
      @RequestParam(defaultValue="1") int pageNo, 
      @RequestParam(defaultValue="10") int pageSize){
    List<Product> findAllByList = productService.findAllByList(pageNo, pageSize);
    model.addAttribute("findAllByList",findAllByList);
    
    int pdacountList = productService.countpdall();
    model.addAttribute("pdacountList",pdacountList);
    
  }
  
  @RequestMapping(value = "pdaPage.do", method= {RequestMethod.POST})
  public @ResponseBody List<Product> pdalist(@RequestParam(defaultValue="2") int pageNo, 
      @RequestParam(defaultValue="10") int pageSize) {
    List<Product> pdapa = productService.pdalist(pageNo, pageSize);
    
    return pdapa;
  }
  
  @GetMapping("classList")
  public void classList(Model model,
      @RequestParam(defaultValue="1") int pageNo, 
      @RequestParam(defaultValue="10") int pageSize) {
    List<Classes> findAllByList = classService.findAllByList(pageNo, pageSize);
    model.addAttribute("findAllByList", findAllByList);
    
    int countList = classService.countclall();
    model.addAttribute("countList",countList);
  }
  
  @RequestMapping(value = "claPage.do", method= {RequestMethod.POST})
  public @ResponseBody List<Classes> claPage(@RequestParam(defaultValue="2") int pageNo, 
      @RequestParam(defaultValue="10") int pageSize) {
    List<Classes> clapa = classService.claPage(pageNo, pageSize);
    
    return clapa;
  }
  
  @GetMapping("prodOrderList")
  public void prdt(Model model,
      @RequestParam(defaultValue="1") int pageNo, 
      @RequestParam(defaultValue="10") int pageSize) {
    List<ProductOrder> productOrderList = productOrderService.listByMaster(pageNo, pageSize);
    model.addAttribute("productOrderList", productOrderList);
    
    int countList = productOrderService.countpro();
    model.addAttribute("countList",countList);

  }
  
  @RequestMapping(value = "proPage.do", method= {RequestMethod.POST})
  public @ResponseBody List<ProductOrder> proPage(@RequestParam(defaultValue="2") int pageNo, 
      @RequestParam(defaultValue="10") int pageSize) {
    List<ProductOrder> propa = productOrderService.proPage(pageNo, pageSize);
    
    return propa;
  }

  @GetMapping("classOrderList")
  public void cls(Model model,
      @RequestParam(defaultValue="1") int pageNo, @RequestParam(defaultValue="10") int pageSize) {
    List<ClassOrder> classOrderList = classOrderService.listByMaster(pageNo, pageSize);
    model.addAttribute("classOrderList", classOrderList);
    
    int countorder = classOrderService.countorderlist();
    
    model.addAttribute("countorder", countorder);
  }

  @RequestMapping(value = "classOrderpage.do", method = {RequestMethod.POST})
  public @ResponseBody List<ClassOrder> classOrderpage(@RequestParam(defaultValue="2") int pageNo, 
      @RequestParam(defaultValue="10") int pageSize) {
    
    List<ClassOrder> OrderList = classOrderService.listByMaster(pageNo, pageSize);
    
    return OrderList;
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
  
  @RequestMapping(value = "mtnote.do", method = {RequestMethod.GET, RequestMethod.POST})
  public @ResponseBody int mtnote(int meno, char stat, String note) {
    Mentee mentee = menteeService.get(meno);
    mentee.setMtstat(stat);
    mentee.setNote(note);
    return menteeService.updateMtstat(mentee);
  }
  
  // 181121 고친거
  @RequestMapping(value = "reptstat.do", method = {RequestMethod.GET, RequestMethod.POST})
  public @ResponseBody int reptstat(int rtno, char stat) {
    Report report = reportService.get(rtno);
    report.setStat(stat);
    return reportService.updateReptstat(report);
  }
  
  // 클래스 삭제
  @RequestMapping(value = "clsstat.do", method = {RequestMethod.GET, RequestMethod.POST})
  public @ResponseBody int clsstat(int no, String stat) {
    Classes classes = classService.findBycno(no);
    classes.setStat(stat);
    return classService.statupdate(classes);
  }
  
  
  // 클래스에 노트 추가
  @RequestMapping(value = "clsnote.do", method = {RequestMethod.GET, RequestMethod.POST})
  public @ResponseBody int clsnote(int no, String stat, String note) {
    Classes classes = classService.findBycno(no);
    classes.setStat(stat);
    classes.setNote(note);
    System.out.println(note);
    return classService.statupdate(classes);
  }

  @GetMapping("mentorreqlist")
  public void mentorlist(Model model,
      @RequestParam(defaultValue="1") int pageNo, 
      @RequestParam(defaultValue="10") int pageSize) {
    List<Mentor> MentorRequestList = mentorService.listByMetoStat(pageNo,pageSize);
    for (Mentor m : MentorRequestList) {
      m.setMentorFile(mentorFileService.get(m.getNo()));
      m.setMentorLicense(mentorlicenseService.get(m.getNo()));
      m.setMentorTag(bigTagService.listByMono(m.getNo()));
    }
    model.addAttribute("MentorRequestList", MentorRequestList);
   
  }
  
  @RequestMapping(value = "mentoradd.do", method = {RequestMethod.GET, RequestMethod.POST})
  public @ResponseBody int mentoradd(Mentor m) {
    return mentorService.add(m);
  }
  
  

  /*
   * 클래스신청목록 관련
   */
  @RequestMapping("detail")
  public void clsmaster(Model model , int no ,HttpSession session) {
    Classes detailclass = classService.findBycno(no);
    
    model.addAttribute("detailclass",detailclass);
    
    List<ClassFile> clsfilelist = classFileService.findByCno(no);
    List<Timetable> clstimelist = timetableService.findByCno(no);

    List<BigTag> BTlist = bigTagService.list();
    
    model.addAttribute("BTlist",BTlist);
    
    model.addAttribute("detailclass",detailclass);
    model.addAttribute("clsfilelist",clsfilelist);
    model.addAttribute("clstimelist",clstimelist);
  }

  @GetMapping("classreqlist")
  public void classlist(Model model,
      @RequestParam(defaultValue="1") int pageNo, 
      @RequestParam(defaultValue="10") int pageSize) {
    List<Classes> ClassRequestList = classService.findByStat(pageNo, pageSize);
    model.addAttribute("ClassRequestList", ClassRequestList);
    
    int countList = classService.countclsreq();
    model.addAttribute("countList",countList);
  }
  
  @RequestMapping(value = "clsreqPage.do", method= {RequestMethod.POST})
  public @ResponseBody List<Classes> reqPage(@RequestParam(defaultValue="2") int pageNo, 
      @RequestParam(defaultValue="10") int pageSize) {
    List<Classes> clrpa = classService.reqPage(pageNo, pageSize);
    return clrpa;
  }

  /*
   * 1:1 문의
  */
  @GetMapping("csList")
  public void csList(Model model, 
      @RequestParam(defaultValue="1") int cspageNo, 
      @RequestParam(defaultValue="10") int cspageSize) {
    List<Cs> csList = csService.findByMaster(cspageNo, cspageSize);
    model.addAttribute("csList",csList);
    
    int countList = csService.countByMaster();
    model.addAttribute("countList",countList);
   
  }
  @RequestMapping(value = "csPage.do", method= {RequestMethod.POST})
  public @ResponseBody List<Cs> cspage(@RequestParam(defaultValue="2") int cspageNo, 
      @RequestParam(defaultValue="10") int cspageSize) {
    List<Cs> cspa = csService.csPage(cspageNo, cspageSize);
    return cspa;
  }
  
  @RequestMapping(value = "masterans.do", method= {RequestMethod.POST})
  public @ResponseBody int update(Cs cs) {
    return csService.update(cs);
  }
  
  @GetMapping("report")
  public void report() {
    
  }
  @GetMapping("reportFinishList")
  public void reportFinishList(Model model,
      @RequestParam(defaultValue="1") int pageNo, 
      @RequestParam(defaultValue="10") int pageSize) {
    List<Report> ReportList = reportService.finishlist(pageNo, pageSize);
    for(Report r: ReportList) {
      r.setCnt(reportService.getMeno2Cnt(r.getMeno2()));
      r.setFinishlist(reportService.listByMeno2(pageNo, pageSize, r.getMeno2()));
    }
    model.addAttribute("ReportList",ReportList);
  }
  
  @GetMapping("reportList")
  public void reportList(Model model,
      @RequestParam(defaultValue="1") int pageNo, 
      @RequestParam(defaultValue="10") int pageSize) {
    List<Report> ReportList = reportService.listByStat(pageNo, pageSize);
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
    List<Notice> noticeList = noticeService.listByMeno(0, 9999, loginUser.getNo());
    for(Notice n : noticeList) {
      if(n.getType().equals("상품")) {
        n.setPhot(productService.get(n.getUrlno()).getPhot());
        n.setTitl(productService.get(n.getUrlno()).getTitl());
      }else if(n.getType().equals("클래스")) {
        System.out.println(n.getUrlno());
        n.setPhot(classService.findBycno(n.getUrlno()).getCfile());
        n.setTitl(classService.findBycno(n.getUrlno()).getTitl());
      }else if(n.getType().equals("수료증")) {
        System.out.println(n.getUrlno());
        Timetable ttab =  timetableService.get(n.getUrlno());
        n.setPhot(classService.findBycno(ttab.getCno()).getCfile());
        n.setTitl(classService.findBycno(ttab.getCno()).getTitl());
      }else if(n.getType().equals("멘토신청거절")) {
        n.setPhot("/upload/img/logo.png");
        n.setTitl("멘토신청결과!");
      }else if(n.getType().equals("멘토신청승인")) {
        n.setPhot("/upload/img/bob.png");
        n.setTitl("멘토신청결과!");
      }
      n.setStat("R");
      noticeService.update(n);
    }
    model.addAttribute("noticeList", noticeList);
  }
  @RequestMapping(value = "notiRemove.do", method = {RequestMethod.GET, RequestMethod.POST})
  public @ResponseBody int notiRemove(int no) {
    return noticeService.remove(no);
  }
  
  @RequestMapping(value = "addNotice.do", method = {RequestMethod.GET, RequestMethod.POST})
  public @ResponseBody int addNotice(Notice notice) {
    
    return noticeService.add(notice);
  }
  
  
  
  /*
   * 차단목록 관련(미완성)
  */
  
  @GetMapping("blacklist")
  public void blacklist(Model model) {
    
  }
  

}