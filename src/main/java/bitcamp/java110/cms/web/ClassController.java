package bitcamp.java110.cms.web;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;
import javax.servlet.ServletContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import bitcamp.java110.cms.domain.Classes;
import bitcamp.java110.cms.service.ClassService;

@Controller
@RequestMapping("/class")
public class ClassController {

  ClassService classService;
  ServletContext sc;
  
  public ClassController(ClassService classService) {
    this.classService = classService;
  }

  @GetMapping("findAll")
  public void findAll() {
    List<Classes> clist= classService.classlist(3, 5);

    for(Classes c : clist) {

      System.out.println(c.getNo());
      System.out.println(c.getTitl());
    }
  }

  @GetMapping("form")
  public void form() {
    
  }
  
  @PostMapping("classinsert")
  public String classinsert(Classes classes, MultipartFile file1) {
    System.out.println("classinsert 삽입 전");
    if (file1.getSize() > 0) {
      String filename = UUID.randomUUID().toString();
      try {
        file1.transferTo(new File(sc.getRealPath("/upload/" + filename)));
      } catch (IllegalStateException | IOException e) {
        e.printStackTrace();
      }
      classes.setPhot(filename);
    }
    classService.classadd(classes);
    System.out.println("classinsert 삽입 후");
    return "redirect:list";
  }
  
  @GetMapping("findBytag")
  public Classes findBytag() {
    
    List<Classes> clist = classService.classlist(3, 5);
    
    for(Classes c : clist) {

      System.out.println(c.getNo());
      System.out.println(c.getTitl());
      System.out.println(c.getMtno());
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

}
