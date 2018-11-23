package bitcamp.java110.cms.web;

import java.util.List;
import javax.servlet.ServletContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import bitcamp.java110.cms.domain.ClassBakt;
import bitcamp.java110.cms.domain.ClassFile;
import bitcamp.java110.cms.domain.ClassLike;
import bitcamp.java110.cms.domain.ClassOrder;
import bitcamp.java110.cms.domain.ClassQna;
import bitcamp.java110.cms.domain.ClassRep;
import bitcamp.java110.cms.domain.Classes;
import bitcamp.java110.cms.service.ClassBaktService;
import bitcamp.java110.cms.service.ClassFileService;
import bitcamp.java110.cms.service.ClassLikeService;
import bitcamp.java110.cms.service.ClassOrderService;
import bitcamp.java110.cms.service.ClassQnaService;
import bitcamp.java110.cms.service.ClassRepService;
import bitcamp.java110.cms.service.ClassService;
import bitcamp.java110.cms.service.MenteeService;

@Controller
@RequestMapping("/class")
public class ClassController {

  ClassService classService;
  ClassQnaService classqnaService;
  ClassOrderService classorderService;
  ClassLikeService classlikeService;
  ClassBaktService classbaktService;
  ClassRepService classrepService;
  ClassFileService classFileService;
  MenteeService menteeService;
  ServletContext sc;
  
  public ClassController(
      ClassService classService,ClassQnaService classqnaService,
      ClassOrderService classorderService,ClassLikeService classlikeService
      ,ClassBaktService classbaktService,MenteeService menteeService,
      ClassRepService classrepService,ClassFileService classFileService,
      ServletContext sc) {
    this.classService = classService;
    this.classqnaService = classqnaService;
    this.classorderService = classorderService;
    this.classlikeService = classlikeService;
    this.classbaktService = classbaktService;
    this.menteeService = menteeService;
    this.classrepService = classrepService;
    this.classFileService = classFileService;
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

  @RequestMapping("classinsert")
  public void classinsert(Classes c) {
    
    c.setNo(6);
    c.setTitl("고정지");
    c.setConts("고정지");
    c.setPric(111);
    //c.setrgdt("now()");
    c.setTime("고정지");
    c.setCapa(5);
    c.setCfile("고정지");
    c.setTinfo("고정지");
    c.setCinfo("고정지");
    c.setPstno("고정지");
    c.setBasAddr("고정지");
    c.setDetAddr("고정지");
    //c.setEdt("고정지");
    c.setMono(4);
    c.setMtno(4);
    
    classService.classadd(c);
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
  
  @RequestMapping("classform")
  public void classform(Model model) {
    
    
    List<Classes> clslist = classService.list(); // list는 전체니까 cno로 찾는게아님

    model.addAttribute("clslist", clslist);
  }
  
  @RequestMapping("detail")
  public void findByCno(Model model,int no) {
    List<ClassRep> clsreqlist = classrepService.listbycno(no);
    
    Classes detailclass = classService.findAllBycno(no);
    
    List<ClassQna> clsqnalist = classqnaService.listbycno(10, 10, no);
    
    List<ClassFile> clsfilelist = classFileService.findByCno(no);
    
    model.addAttribute("clsreqlist",clsreqlist);
    model.addAttribute("detailclass",detailclass);
    model.addAttribute("clsqnalist",clsqnalist);
    model.addAttribute("clsfilelist",clsfilelist);
  }
  
  @RequestMapping("findByptno")
  public void findByptno(Model model,int no) {
    Classes prdtcls = classService.findbyptno(no);
    
    model.addAttribute("prdtcls",prdtcls);
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
  
  @RequestMapping("qnainsert")
  public void qnainsert(ClassQna classqna) {
    
    classqna.setNo(7);
    classqna.setMeno(5);
    classqna.setCno(7);
    classqna.setTitl("호에에엣?");
    classqna.setConts("히이이ㅣ이엣?");
    
    
    classqnaService.qnaadd(classqna);
  }
  
  @RequestMapping("qnadelete")
  public void qnadelete(int no) {
    
    classqnaService.qnadelete(no);
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
  
  @RequestMapping("ansupdate")
  public void ansupdate(ClassQna classqna) {
    
    classqna.setNo(6);
    classqna.setAnser("손님..;; 손님이 더 이상해요!!!");
    
    classqnaService.ansupdate(classqna);
    
  }
  
  ///////////////// p_cls_qna 수업질문답변//////////////////
  @PostMapping("orderinsert")
  public int orderinsert(ClassOrder classorder) {
    
    classorderService.orderadd(classorder);
    
    return 1;
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
   
    classbaktService.add(classbakt);
    
    return 1;
  }
  
  @PostMapping("baktdelete")
  public int baktdelete(int no) {
    
    classbaktService.delete(no);
    
    return 1;
  }
  
  @GetMapping("baktlist")
  public List<ClassBakt> baktlist(){
    
    List<ClassBakt> clist = classbaktService.list(3, 5);
    
    for(ClassBakt c : clist) {
      System.out.println(c.getNo());
      System.out.println(c.getMeno());
      System.out.println(c.getCtno());
    }
    
    return null;
  }
}
