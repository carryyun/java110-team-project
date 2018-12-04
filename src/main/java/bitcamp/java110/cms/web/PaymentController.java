package bitcamp.java110.cms.web;

import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/payment")
public class PaymentController {

  public PaymentController() {

  }
  
  @GetMapping("complete")
  public void complete(Model model) {
  }
  
  /*@RequestMapping(value = "kakaotest", method = {RequestMethod.GET, RequestMethod.POST})*/
  @RequestMapping(value = "complete.do", method = RequestMethod.POST)
  public @ResponseBody String completedo(Map<String, Object> map,Model model) {
    /*buyer_email
    buyer_name
    buyer_tel
    buyer_addr
    buyer_postcode*/
    
    System.out.println(map.get("imp_uid"));
    System.out.println(map.get("buyer_email"));
    System.out.println(map.get("buyer_name"));
    System.out.println(map.get("buyer_tel"));
    System.out.println(map.get("buyer_addr"));
    System.out.println(map.get("buyer_postcode"));
/*    model.addAttribute("buyer_email",buyer_email);
    model.addAttribute("buyer_name",buyer_name);
    model.addAttribute("buyer_tel",buyer_tel);
    model.addAttribute("buyer_addr",buyer_addr);
    model.addAttribute("buyer_postcode",buyer_postcode);*/
    return "redirect:complete";
  }
}

