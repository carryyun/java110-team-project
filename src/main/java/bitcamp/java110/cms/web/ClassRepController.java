package bitcamp.java110.cms.web;

import java.util.List;
import javax.servlet.ServletContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import bitcamp.java110.cms.domain.ClassRep;
import bitcamp.java110.cms.service.ClassRepService;

@Controller
@RequestMapping("/classdetail")
public class ClassRepController {
  
  ClassRepService classRepService;
  ServletContext sc;
  
  public ClassRepController(ClassRepService classRepService) {
    this.classRepService = classRepService;
    System.out.println("ClassRepController 호출");
  }
  
  @GetMapping("findAll")
  public void findAll() {
    System.out.println("findAll 호출");
    List<ClassRep> clist= classRepService.repList();

    for(ClassRep c : clist) {

      System.out.println(c.getTitl());
      System.out.println(c.getConts());
    }
  }
  
  
}

