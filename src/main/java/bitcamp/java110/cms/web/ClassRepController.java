package bitcamp.java110.cms.web;

import java.util.List;
import javax.servlet.ServletContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import bitcamp.java110.cms.domain.ClassRep;
import bitcamp.java110.cms.service.ClassRipService;

@Controller
@RequestMapping("/classdetail")
public class ClassRepController {
  
  ClassRipService classRipService;
  ServletContext sc;
  
  public ClassRepController(ClassRipService classRipService) {
    this.classRipService = classRipService;
    System.out.println("ClassRipController 호출");
  }
  
  @GetMapping("findAll")
  public void findAll() {
    System.out.println("findAll 호출");
    List<ClassRep> clist= classRipService.ripList(3);

    for(ClassRep c : clist) {

      System.out.println(c.getTitl());
      System.out.println(c.getConts());
    }
  }
  
  
}

