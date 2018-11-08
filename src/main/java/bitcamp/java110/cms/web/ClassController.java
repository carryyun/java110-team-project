package bitcamp.java110.cms.web;

import java.util.List;
import javax.servlet.ServletContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import bitcamp.java110.cms.domain.Classbakt;
import bitcamp.java110.cms.domain.Classes;
import bitcamp.java110.cms.domain.Classlike;
import bitcamp.java110.cms.domain.Classorder;
import bitcamp.java110.cms.domain.Classqna;
import bitcamp.java110.cms.service.ClassService;
import bitcamp.java110.cms.service.ClassbaktService;
import bitcamp.java110.cms.service.ClasslikeService;
import bitcamp.java110.cms.service.ClassorderService;
import bitcamp.java110.cms.service.ClassqnaService;

@Controller
@RequestMapping("/class")
public class ClassController {

  ClassService classService;
  ClassqnaService classqnaService;
  ClassorderService classorderService;
  ClasslikeService classlikeService;
  ClassbaktService classbaktService;
  ServletContext sc;
  
  public ClassController(
      ClassService classService,ClassqnaService classqnaService,
      ClassorderService classorderService,ClasslikeService classlikeService
      ,ClassbaktService classbaktService) {
    this.classService = classService;
    this.classqnaService = classqnaService;
    this.classorderService = classorderService;
    this.classlikeService = classlikeService;
    this.classbaktService = classbaktService;
  }

  @GetMapping("findAll")
  public void findAll() {
    System.out.println("findAll 호출");
    List<Classes> clist= classService.classlist(5);
    

    for(Classes c : clist) {

      System.out.println(c.getNo());
      System.out.println(c.getTitl());
    }
  }

  /*@GetMapping("form")
  public void form() {
    
  }*/
  
  /*@PostMapping("classinsert")
  public String classinsert(Classes classes, MultipartFile file1) {
    System.out.println("classinsert 삽입 전");
    if (file1.getSize() > 0) {
      String filename = UUID.randomUUID().toString();
      try {
        file1.transferTo(new File(sc.getRealPath("/classphoto/" + filename)));
      } catch (IllegalStateException | IOException e) {
        e.printStackTrace();
      }
      classes.setPhot(filename);
    }
    classService.classadd(classes);
    System.out.println("classinsert 삽입 후");
    return "redirect:list";
  }*/
  
  @GetMapping("findBytag")
  public Classes findBytag() {
    
    List<Classes> clist = classService.classlist(5);

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
    
    List<Classes> clist = classService.classlist(5);
    
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
  ////////////////////여기까지 p_cls 클래스////////////////////////
  
  @GetMapping("qnalist")
  public void qnalist() {
    
    List<Classqna> clist= classqnaService.classqnalist(5);
    

    for(Classqna c : clist) {

      System.out.println(c.getNo());
      System.out.println(c.getTitl());
      System.out.println(c.getConts());
      System.out.println(c.getRgdt());
    }
  }
  
  @PostMapping("quainsert")
  public int quainsert(Classqna classqna) {
    
    classqnaService.qnaadd(classqna);
    
    return 1;
  }
  
  @PostMapping("ansinsert")
  public int ansinsert(Classqna classqna) {
    
    classqnaService.ansadd(classqna);
    
    return 1;
  }
  
  ///////////////// p_cls_qna 수업질문답변//////////////////
  @PostMapping("orderinsert")
  public int orderinsert(Classorder classorder) {
    
    classorderService.orderadd(classorder);
    
    return 1;
  }
  
  @GetMapping("orderlist")
  public List<Classorder> orderlist() {
    
    List<Classorder> clist = classorderService.corderlist(5);
    
    for(Classorder c : clist) {
      System.out.println(c.getNo());
      System.out.println(c.getMeno());
      System.out.println(c.getTime());
      System.out.println(c.getTotPric());
      System.out.println(c.getPayopt());
      System.out.println(c.getPaydt());
      System.out.println(c.getCtno());
    }
    
    return null;
  }
  
  ///////////////// p_cls_order 클래스 신청내역///////////////////////
  
  @GetMapping("likelist")
  public List<Classlike> likelist() {
    
    List<Classlike> clist = classlikeService.classlikelist(5);
    
    for(Classlike c : clist) {
      System.out.println(c.getNo());
      System.out.println(c.getMeno());
      System.out.println(c.getCno());
    }
    return null;
  }
  
  @PostMapping("likeinsert")
  public int likeinsert(Classlike classlike) {
    
    classlikeService.likeadd(classlike);
    
    return 1;
  }
  
  @PostMapping("likedelete")
  public int likedelete(Classlike classlike) {
    
    classlikeService.likesub(classlike);
    
    return 1;
  }
  
  ////////////////////////p_cls_like 찜클래스///////////////////////
  
  @PostMapping("baktinsert")
  public int baktinsert(Classbakt classbakt) {
   
    classbaktService.baktadd(classbakt);
    
    return 1;
  }
  
  @PostMapping("baktdelete")
  public int baktdelete(Classbakt classbakt) {
    
    classbaktService.baktsub(classbakt);
    
    return 1;
  }
  
  @GetMapping("baktlist")
  public List<Classbakt> baktlist(){
    
    List<Classbakt> clist = classbaktService.baktlist(5);
    
    for(Classbakt c : clist) {
      System.out.println(c.getNo());
      System.out.println(c.getMeno());
      System.out.println(c.getCtno());
    }
    
    return null;
  }
}
