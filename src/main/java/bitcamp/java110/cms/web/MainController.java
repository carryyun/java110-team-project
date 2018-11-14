package bitcamp.java110.cms.web;

import javax.servlet.ServletContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mainpage")
public class MainController {


  ServletContext sc;

  public MainController() {
  }
  
  @GetMapping("mainpage")
  public void mainpage() {
    /*List<BigTag> list = bigTagService.list();
    List<MiddleTag> list2 = middleTagService.list();
    List<Product> product_list = productService.list();*/
    
/*    for(Product p:product_list) {
      System.out.print(p.getMentee().getName()+"/");
      System.out.print(p.getCert().getType()+"/");
      System.out.print(p.getSmalltag().getName()+"/");
      System.out.println(p.getMiddleTagName());
      System.out.println(p.getMentee().getName());
      
    }*/

    /*model.addAttribute("list",list);
    model.addAttribute("list2",list2);
    model.addAttribute("product_list",product_list);*/
    
  }

}


