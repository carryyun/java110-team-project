package bitcamp.java110.cms.web;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import bitcamp.java110.cms.domain.ProductBakt;
import bitcamp.java110.cms.service.ProductBaktService;

@Controller
@RequestMapping("/productBakt")
public class ProductBaktController {
  
  ProductBaktService productBaktService;
  
  public ProductBaktController(ProductBaktService productBaktService) {
    this.productBaktService = productBaktService;
  }
  
  @GetMapping("basketproduct")
  public void basketproduct(Model model) {
    List<ProductBakt> basketList = productBaktService.listAllByMeno(4);
    
    int total=0;
    
    for(ProductBakt pb: basketList) {
      total += pb.getProduct().getPric();
      
    }
    
    model.addAttribute("total", total);
    model.addAttribute("basketList", basketList);
  }
  
  @ResponseBody
  @RequestMapping("removeDate")
  public String removeDate(int no) throws Exception {
      
      productBaktService.delete(no);
      return "redirect:basketproduct";
  }

}
