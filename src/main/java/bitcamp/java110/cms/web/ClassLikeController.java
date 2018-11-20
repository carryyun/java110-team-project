package bitcamp.java110.cms.web;

import java.util.List;
import javax.servlet.ServletContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import bitcamp.java110.cms.domain.ClassLike;
import bitcamp.java110.cms.service.ClassLikeService;

@Controller
@RequestMapping("/classLike")
public class ClassLikeController {
  
  ClassLikeService classlikeService;
  ServletContext sc;
  
  public ClassLikeController(ClassLikeService classlikeService, ServletContext sc) {
    this.classlikeService = classlikeService;
    this.sc = sc;
    
  }
  
  @GetMapping("classLike")
  public void basketproduct(Model model) {
    List<ClassLike> likeList = classlikeService.listByMeno(3);
    
    model.addAttribute("likeList",likeList);
    
  }
  
  @ResponseBody
  @RequestMapping("removeDate")
  public String removeDate(int no) throws Exception {
      
      classlikeService.likesub(no);
      return "redirect:classLike";
  }

}
