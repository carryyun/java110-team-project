package bitcamp.java110.cms.web;

import java.util.List;
import javax.servlet.ServletContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import bitcamp.java110.cms.domain.Classes;
import bitcamp.java110.cms.service.ClassService;

@Controller
@RequestMapping("/class")
public class ClassController {

  ClassService classService;
  ServletContext sc;
  
  public ClassController(ClassService classService) {
    this.classService = classService;
    System.out.println("ClassController 호출");
  }

  @GetMapping("findAll")
  public void findAll() {
    System.out.println("findAll 호출");
    List<Classes> clist= classService.classlist(3, 5);
    

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
    
    List<Classes> clist = classService.classlist(3, 5);

    /*Classes cc = new Classes();
    
    cc.setMtno(20);//
    cc.setNo(15);//
    cc.setTitl("DD");//
    cc.setConts("dd");
    cc.setBasAddr("주소");
    cc.setPric(300);
    cc.setRgdt(Date.valueOf("2001-03-15"));
    cc.setTime("30");
    cc.setCapa(30);
    cc.setCfile("");
    cc.setTinfo("");
    cc.setCinfo("");
    clist.add(cc);*/
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
    
    List<Classes> clist = classService.classlist(3, 5);
    
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

}
