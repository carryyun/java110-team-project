package bitcamp.java110.cms.web;

import java.util.List;
import javax.servlet.ServletContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import bitcamp.java110.cms.domain.ClassBakt;
import bitcamp.java110.cms.service.ClassBaktService;

@Controller
@RequestMapping("/classBakt")
public class ClassBaktController {
  
  ClassBaktService classBaktService;
  ServletContext sc;
  
  
  public ClassBaktController(ClassBaktService classBaktService, 
                             ServletContext sc) {
    this.classBaktService = classBaktService;
    this.sc = sc;
  }
  
  @GetMapping("basketclass")
  public void basketclass(Model model) {
    List<ClassBakt> basketList = classBaktService.listByMeno(1);
    
    System.out.println(classBaktService.listByMeno(1));
    model.addAttribute("basketList", basketList);
    
    
  }
  
  @ResponseBody
  @RequestMapping("removeDate")
  public String removeDate(int no) throws Exception {
      
      classBaktService.delete(no);
      return "redirect:basketclass";
  }

}
