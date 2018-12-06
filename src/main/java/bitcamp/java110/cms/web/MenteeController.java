package bitcamp.java110.cms.web;

import java.util.List;
import java.util.UUID;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import bitcamp.java110.cms.domain.Mentee;
import bitcamp.java110.cms.service.MenteeService;

@Controller
@RequestMapping("/mentee")
public class MenteeController {
  
  MenteeService menteeService;
  ServletContext sc;
  
  public MenteeController(MenteeService menteeService,
      ServletContext sc) {
    this.menteeService = menteeService;
    this.sc = sc;
  }
  
  @RequestMapping(value = "searchpwd", method=RequestMethod.GET)
  public void searchpwd() {
  }
  @RequestMapping(value = "searchpwd", method=RequestMethod.POST)
  public void searchpwdPost() {
  }
  
//  @RequestMapping(value = "signup", method=RequestMethod.GET)
//  public void signup(Mentee mentee) {
//    }
  
  @RequestMapping(value = "sign", method=RequestMethod.GET)
  public void sign(Mentee mentee) {
    }
  @RequestMapping(value = "fbsignup", method=RequestMethod.GET)
  public void fbsignup(Mentee mentee) {
  }
  
//  @RequestMapping(value = "searchuser", method=RequestMethod.GET)
//  public void searchUser() {
//    
//  }
//  @RequestMapping(value = "searchuser", method=RequestMethod.POST)
//  public void searchUserPost() {
//  }
  @RequestMapping(value = "searchmail", method=RequestMethod.GET)
  public void searchUser() {
    
  }
  @RequestMapping(value = "searchmail", method=RequestMethod.POST)
  public void searchUserPost() {
  }
  
  @RequestMapping("resultpwd")
  public void resultPwd(Mentee mentee,Model model) {
    String pwd = UUID.randomUUID().toString();
    if(menteeService.getByNameEmail(mentee) != null) {
      mentee.setPwd(pwd);
      menteeService.naverMailSend(mentee);
      menteeService.tempwd(mentee);
      model.addAttribute("value",menteeService.getByNameEmail(mentee));
    }else {
        model.addAttribute("value", "사용자 정보가 없습니다.");
      }
  }
  
  @RequestMapping("resultemail")
  public void resultEmail(Mentee mentee,Model model) {
    if(menteeService.getByNamePhone(mentee) != null)
    model.addAttribute("value",menteeService.getByNamePhone(mentee));
    else {
      model.addAttribute("value", "사용자 정보가 없습니다.");
    }
  }
  
  
  @RequestMapping(value = "fbsignup", method = RequestMethod.POST)
  public String fbsignup(Mentee mentee ,HttpSession session) {
    mentee.setEmail(session.getAttribute("email").toString());
    mentee.setName(session.getAttribute("name").toString());
    menteeService.fbadd(mentee);
    return  "redirect:app/mainpage/mainpage";
  }
//  @RequestMapping(value = "signup", method=RequestMethod.POST)
//  public String signup2(Mentee mentee) {
//    menteeService.add(mentee);
//    return  "redirect:app/mainpage/mainpage";
//    }
  @RequestMapping(value = "sign", method=RequestMethod.POST)
  public String signup2(Mentee mentee) {
    menteeService.add(mentee);
    return "redirect:../mainpage/mainpage";
    }
  
  @GetMapping("findAll")
  public void findAll() {
    System.out.println("findAll 호출");
    List<Mentee> mlist= menteeService.list();
    for(Mentee m : mlist) {
      System.out.println(m.getNo());
      System.out.println(m.getBas_addr());
      System.out.println(m.getNote());
    }
  }
   
  
  @RequestMapping(value = "checkemail.do", method = { RequestMethod.GET, RequestMethod.POST})
  public @ResponseBody int checkByEmail(Mentee mentee) {
    System.out.println(mentee.getEmail());
    return menteeService.checkByEmail(mentee);
    //model.addAttribute("checkemail", email);
  }
  
  @RequestMapping(value = "checknick.do", method = { RequestMethod.GET, RequestMethod.POST})
  public @ResponseBody int checkByNick(Mentee mentee) {
    return menteeService.checkByNick(mentee);
    //model.addAttribute("checkemail", email);
  }
  
  
}

