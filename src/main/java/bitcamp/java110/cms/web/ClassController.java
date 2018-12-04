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
import bitcamp.java110.cms.domain.BigTag;
import bitcamp.java110.cms.domain.ClassBakt;
import bitcamp.java110.cms.domain.ClassFile;
import bitcamp.java110.cms.domain.ClassLike;
import bitcamp.java110.cms.domain.ClassOrder;
import bitcamp.java110.cms.domain.ClassQna;
import bitcamp.java110.cms.domain.ClassRep;
import bitcamp.java110.cms.domain.Classes;
import bitcamp.java110.cms.domain.Mentee;
import bitcamp.java110.cms.domain.MiddleTag;
import bitcamp.java110.cms.domain.Timetable;
import bitcamp.java110.cms.service.BigTagService;
import bitcamp.java110.cms.service.ClassBaktService;
import bitcamp.java110.cms.service.ClassFileService;
import bitcamp.java110.cms.service.ClassLikeService;
import bitcamp.java110.cms.service.ClassOrderService;
import bitcamp.java110.cms.service.ClassQnaService;
import bitcamp.java110.cms.service.ClassRepService;
import bitcamp.java110.cms.service.ClassService;
import bitcamp.java110.cms.service.MenteeService;
import bitcamp.java110.cms.service.MiddleTagService;
import bitcamp.java110.cms.service.TimetableService;

@Controller
@RequestMapping("/class")
public class ClassController {

  ClassService classService;
  ClassQnaService classqnaService;
  ClassOrderService classorderService;
  ClassLikeService classlikeService;
  ClassBaktService classBaktService;
  ClassRepService classrepService;
  ClassFileService classFileService;
  TimetableService timetableService;
  MenteeService menteeService;
  BigTagService bigTagService;
  MiddleTagService middleTagService;
  ServletContext sc;
  
  public ClassController(
      ClassService classService,ClassQnaService classqnaService,
      ClassOrderService classorderService,ClassLikeService classlikeService
      ,ClassBaktService classBaktService,MenteeService menteeService,
      ClassRepService classrepService,ClassFileService classFileService,
      TimetableService timetableService,BigTagService bigTagService,
      MiddleTagService middleTagService, ServletContext sc) {
    this.classService = classService;
    this.classqnaService = classqnaService;
    this.classorderService = classorderService;
    this.classlikeService = classlikeService;
    this.classBaktService = classBaktService;
    this.menteeService = menteeService;
    this.classrepService = classrepService;
    this.classFileService = classFileService;
    this.timetableService = timetableService;
    this.bigTagService = bigTagService;
    this.middleTagService = middleTagService;
    this.sc = sc;
  }

  @GetMapping("form") 
  public void form() {
    
  }
  
  @PostMapping("findAll")
  public void findAll() {
    System.out.println("findAll 호출");
    List<Classes> clist= classService.classList(5);
    

    for(Classes c : clist) {

      System.out.println(c.getNo());
      System.out.println(c.getTitl());
    }
  }
  @RequestMapping(value = "classadd", method=RequestMethod.GET)
  public void classinsert() {
    
  }
  
  @RequestMapping(value = "classadd", method=RequestMethod.POST)
  public String classinsert(Classes c,List<MultipartFile> files,
      String removefiles, String days,String date,String edate,String stime, String etime,HttpSession session) throws Exception {
    //Mentee loginUser = new Mentee();
    //loginUser = (Mentee)session.getAttribute("loginUser");
    //loginUser.getNo();
    
    List<String> filelist = new ArrayList<>();
    System.out.println(removefiles);
    System.out.println(days);
    System.out.println(c.getNo());
    System.out.println(c.getTitl());
    System.out.println(c.getPric());
    System.out.println(c.getTime());
    System.out.println(c.getCapa());
    System.out.println(c.getPstno());
    System.out.println(c.getBasAddr());
    System.out.println(c.getDetAddr());
    System.out.println(c.getTinfo());
    System.out.println(c.getCinfo());
    System.out.println(c.getType());
    System.out.println(stime);
    System.out.println(etime);
    for(MultipartFile file : files) {
      if(file.getOriginalFilename().length() > 2 ) {
        if(file.getOriginalFilename().equals(removefiles)) {
          files.remove((Object)file.getOriginalFilename());
        }else {
        String filename = UUID.randomUUID().toString();
        file.transferTo(new File(sc.getRealPath("/upload/img/test/" + filename+".png")));
        filelist.add(filename);
        }
      } 
    }
    for(String file : filelist) {
      System.out.println(file);
    }
    classService.classadd(c, filelist, removefiles, days,date, edate,stime,etime,session);
    return "redirect:clsCate?no=1";
  }
  
  
  @RequestMapping("classupdate")
  public void classupdate(Classes c) {
    System.out.println("classupdate 호출");
    
    c.setNo(6);
    c.setTitl("고정지");
    c.setConts("안녕하세요 저는 둠칫둠칫");
    c.setPric(111);
    //c.setrgdt("now()");
    c.setTime("고정지");
    c.setCapa(10);
    c.setCfile("naver");
    c.setTinfo("고정지");
    c.setCinfo("안녕하ㅔ요");
    c.setPstno("고정지");
    c.setBasAddr("고정지");
    c.setDetAddr("고정지");
    //c.setEdt("고정지");
    c.setMono(3);
    c.setMtno(3);
    
    classService.classupdate(c);
  }
  
  @GetMapping("findBytag")
  public Classes findBytag() {
    
    List<Classes> clist = classService.classList(5);

    for(Classes c : clist) {
      
      System.out.println(c.getMtno());
      System.out.println(c.getNo());
      System.out.println(c.getTitl());
      System.out.println("-------------");
    }
    
    return null;
  }
  
  @GetMapping("findByba")
  public Classes findByba() {
    
    List<Classes> clist = classService.classList(5);
    
    for(Classes c : clist) {

      System.out.println(c.getNo());
      System.out.println(c.getTitl());
      System.out.println(c.getMtno());
      System.out.println(c.getBasAddr());
    }
    
    return null;
  }
  
  @GetMapping("findByday")
  public Classes findByday() {
    
    return null;
  }
  
  @RequestMapping("cls")
  public void cls(Model model) {
    List<Classes> clslist = classService.list();
    model.addAttribute("clslist", clslist);
  }
  
  @RequestMapping("clsCate")
  public void clsCate(Model model, int no, String type) {
    BigTag bigtag = null;
    List<Classes> clslist = null;
    if(type == null) {
      clslist = classService.listByBtno(10, 5, no);
      bigtag = bigTagService.get(no);
      model.addAttribute("selectedNo", 0);
    }else if("mtag".equals(type)) {
      clslist = classService.listByMtno(10, 5, no);
      MiddleTag middleTag = middleTagService.get(no);
      bigtag = bigTagService.get(middleTag.getBtno());
      model.addAttribute("selectedNo", no);
    }
    
    /*List<ProductPopul> pp_list = productPopulService.list();
    List<ProductPopul> pp_product = new ArrayList<>();

    for (ProductPopul p : pp_list) {

      pp_product.add(p);
    }*/
    List<Classes> clsaddlist = classService.classList(no);
    ObjectMapper mapper = new ObjectMapper();
    String jsonText = "";
    try {

      jsonText = mapper.writeValueAsString(clsaddlist);
      model.addAttribute("clsaddlist", jsonText);
    } catch (JsonProcessingException e) {
      System.out.println(e.getMessage());
    }
    
    model.addAttribute("clslist", clslist);
    
    
    model.addAttribute("bigTag", bigtag);
  }
  
  @RequestMapping("detail")
  public void findByCno(@RequestParam(defaultValue="1") int reppageNo, @RequestParam(defaultValue="5") int reppageSize, 
      @RequestParam(defaultValue="1") int qnapageNo, @RequestParam(defaultValue="5") int qnapageSize, 
      Model model,int no ,HttpSession session) {
    
    List<ClassRep> clsreqlist = classrepService.listbycno(no , reppageNo , reppageSize);
    
    Classes detailclass = classService.findBycno(no);
    
    List<ClassQna> clsqnalist = classqnaService.listbycno(no, qnapageNo, qnapageSize);
    
    List<ClassFile> clsfilelist = classFileService.findByCno(no);
    
    List<Timetable> clstimelist = timetableService.findByCno(no);
    
    int countrep = classrepService.countbycno(no);
    
    int countqna = classqnaService.countbycno(no);
    
    model.addAttribute("clsreqlist",clsreqlist);
    model.addAttribute("detailclass",detailclass);
    model.addAttribute("clsqnalist",clsqnalist);
    model.addAttribute("clsfilelist",clsfilelist);
    model.addAttribute("clstimelist",clstimelist);
    model.addAttribute("countrep",countrep);
    model.addAttribute("countqna",countqna);
  }
  
  @RequestMapping("findByptno")
  public void findByptno(Model model,int no) {
    Classes prdtcls = classService.findbyptno(no);
    
    model.addAttribute("prdtcls",prdtcls);
  }
  
  @RequestMapping("classregi")
  public void classregi() {
    
  }
  
  ////////////////////여기까지 p_cls 클래스////////////////////////
  
  @GetMapping("qnalist")
  public void qnalist() {
    
    List<ClassQna> clist= classqnaService.classqnalist(4,10,5);
    

    for(ClassQna c : clist) {

      System.out.println(c.getNo());
      System.out.println(c.getTitl());
      System.out.println(c.getConts());
      System.out.println(c.getRgdt());
    }
  }
  
  @RequestMapping(value = "qnainsert", method = {RequestMethod.POST})
  public @ResponseBody int qnainsert(ClassQna classqna) {
    System.out.println(classqna.getCno());
    System.out.println(classqna.getTitl());
    System.out.println(classqna.getConts());
    System.out.println(classqna.getMeno());
    System.out.println(classqna.getType());
    
    
    System.out.println(classqna.toString());
    
    return classqnaService.qnaadd(classqna);
  }
  
  
  @RequestMapping("qnaupdate")
  public void qnaupdate(ClassQna classqna) {
    
    classqna.setNo(5);
    //classqna.setMeno(7);
    //classqna.setCno(cno);
    classqna.setTitl("고정은씨는 이 글을 보시오!!");
    classqna.setConts("응 넌 낚였어");
    
    classqnaService.qnaupdate(classqna);
  }
  
  @RequestMapping(value = "ansupdate.do", method = {RequestMethod.POST})
  public @ResponseBody int ansupdate(ClassQna classqna) {
    
    System.out.println(classqna.getCno());
    System.out.println(classqna.getTitl());
    System.out.println(classqna.getConts());
    System.out.println(classqna.getMeno());
    System.out.println(classqna.getType());
    System.out.println(classqna.getAnser());
    System.out.println(classqna.getRgdt2());
    
    return classqnaService.ansupdate(classqna);
  }
  
  @RequestMapping(value = "repinsert", method = {RequestMethod.POST})
  public @ResponseBody int repinsert(ClassRep classrep) {
    
    System.out.println(classrep.getMeno());
    System.out.println(classrep.getCno());
    System.out.println(classrep.getTitl());
    System.out.println(classrep.getConts());
    System.out.println(classrep.getStar());
    System.out.println(classrep.getPhot());
    System.out.println(classrep.getRgdt());
    
    System.out.println(classrep.toString());
    
    
    return classrepService.repAdd(classrep);
  }
  
  @RequestMapping(value = "clslikeins.do", method = {RequestMethod.POST})
  public @ResponseBody String clslikeins(ClassLike classlike) {
    
    System.out.println(classlike.getMeno());
    System.out.println(classlike.getCno());
    classlikeService.likeadd(classlike);
    
    return "redirect:detail?no="+classlike.getCno();
  }
  
  @RequestMapping(value = "clsrepdele.do", method = {RequestMethod.POST})
  public @ResponseBody int clsrepdele(int no) {
    
    return classrepService.repDelete(no);
  }
  
  @RequestMapping(value = "clsrepchange.do", method = {RequestMethod.POST})
  public @ResponseBody int clsrepchange(ClassRep classRep) {
    
    return classrepService.repupdate(classRep);
  }
  
  ///////////////// p_cls_qna 수업질문답변//////////////////
  @PostMapping("orderinsert")
  public int orderinsert(ClassOrder classorder) {
    
    classorderService.orderadd(classorder);
    
    return 1;
  }

  @RequestMapping("qnadelete")
  public void qnadelete(int no) {
    
    classqnaService.qnadelete(no);
  }
 /* @GetMapping("corderlist")
  public List<ClassOrder> orderlist() {
    
    List<ClassOrder> clist = classorderService.corderlist(4,10,5);
    
    for(ClassOrder c : clist) {
      System.out.println(c.getNo());
      System.out.println(c.getMeno());
      System.out.println(c.getTime());
      System.out.println(c.getTot_pric());
      System.out.println(c.getPayopt());
      System.out.println(c.getPaydt());
      System.out.println(c.getCtno());
    }
    
    return null;
  }*/
  
  ///////////////// p_cls_order 클래스 신청내역///////////////////////
  
  @GetMapping("likelist")
  public List<ClassLike> likelist() {
    
    List<ClassLike> clist = classlikeService.classlikelist(5);
    
    for(ClassLike c : clist) {
      System.out.println(c.getNo());
      System.out.println(c.getMeno());
      System.out.println(c.getCno());
    }
    return null;
  }
  
  @RequestMapping("likeinsert")
  public void likeinsert(ClassLike classlike) {
    
    classlike.setNo(6);
    classlike.setCno(6);
    classlike.setMeno(6);
    
    classlikeService.likeadd(classlike);
    
  }
  
  @RequestMapping("likedelete")
  public void likedelet(int no) {
    
    classlikeService.likesub(no);
  }
  
  ////////////////////////p_cls_like 찜클래스///////////////////////
  
  @PostMapping("baktinsert")
  public int baktinsert(ClassBakt classbakt) {
   
    classBaktService.add(classbakt);
    
    return 1;
  }
  
  @PostMapping("baktdelete")
  public int baktdelete(int no) {
    
    classBaktService.delete(no);
    
    return 1;
  }
  
  @GetMapping("baktlist")
  public List<ClassBakt> baktlist(){
    
    List<ClassBakt> clist = classBaktService.list(3, 5);
    
    for(ClassBakt c : clist) {
      System.out.println(c.getNo());
      System.out.println(c.getMeno());
      System.out.println(c.getCtno());
    }
    
    return null;
  }
  
  /*
   * 클래스 장바구니 관련 시작
   */
  @GetMapping("basket")
  public void basketclass(Model model, HttpSession session) {
    Mentee mentee = (Mentee) session.getAttribute("loginUser");
    List<ClassBakt> basketList = classBaktService.listByMeno(mentee.getNo());
    model.addAttribute("basketList", basketList);
    
    List<ClassBakt> sumList = classBaktService.sumByMeno(mentee.getNo());
    model.addAttribute("sumList", sumList);
  }
  
  
  @ResponseBody
  @RequestMapping("removeDate")
  public String removeDate(int no) throws Exception {
      
      classBaktService.delete(no);
      return "redirect:basketclass";
  }
  //클래스 장바구니 종료
  
  /*
   * 찜클래스 관련 시작
   */
  @GetMapping("like")
  public void basketproduct(Model model, HttpSession session) {
    Mentee loginUser = (Mentee) session.getAttribute("loginUser");
    
    List<ClassLike> likeList = classlikeService.listByMeno(loginUser.getNo());
    
    model.addAttribute("likeList",likeList);
    
  }
  @ResponseBody
  @RequestMapping("removeLike")
  public String removeLike(int no) throws Exception {
      
      classlikeService.likesub(no);
      return "redirect:classLike";
  }
  // 찜클래스 종료
}