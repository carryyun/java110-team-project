package bitcamp.java110.cms.web;

import java.util.List;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import bitcamp.java110.cms.domain.Cs;
import bitcamp.java110.cms.domain.Member;
import bitcamp.java110.cms.domain.MentorFile;
import bitcamp.java110.cms.domain.MentorLicense;
import bitcamp.java110.cms.domain.Notice;
import bitcamp.java110.cms.domain.ProductTimetable;
import bitcamp.java110.cms.domain.Report;
import bitcamp.java110.cms.service.AuthService;
import bitcamp.java110.cms.service.CsService;
import bitcamp.java110.cms.service.MentorFileService;
import bitcamp.java110.cms.service.MentorLicenseService;
import bitcamp.java110.cms.service.NoticeService;
import bitcamp.java110.cms.service.ProductTimetableService;
import bitcamp.java110.cms.service.ReportService;

@Controller
@RequestMapping("/kakao")
public class KakaoController {

    AuthService authService;
    NoticeService noticeService;
    CsService csService;
//    ClassFileService cfileService;
    MentorFileService mfileService;
    MentorLicenseService mlicnService;
    ProductTimetableService productTimetableService;
    ReportService reportService;


    public KakaoController(
        AuthService authService
        ,NoticeService noticeService
        ,CsService csService
//        ,ClassFileService cfileService
        ,MentorFileService mfileService
        ,MentorLicenseService mlicnService
        ,ProductTimetableService productTimetableService
        ,ReportService reportService) {

        this.authService = authService;
        this.noticeService = noticeService;
        this.csService = csService;
//        this.cfileService = cfileService;
        this.mfileService = mfileService;
        this.mlicnService = mlicnService;
        this.productTimetableService=productTimetableService;
        this.reportService=reportService;

    }
    
       
              


    @GetMapping("form")
    public void form() {
    }
    
    @GetMapping("mlicn")
    public void mlicn() {
      List<MentorLicense> ml = mlicnService.list(1,5);
      System.out.println(ml);
      for(MentorLicense mlicn: ml) {
        System.out.println(ml.get(2));
      }
    }

    @GetMapping("timetable")
    public void timetable() {
      List<ProductTimetable> pt = productTimetableService.list(1, 5);
      System.out.println(pt);
      for(ProductTimetable productTimetable: pt) {
        System.out.println(productTimetable.getNo());
        System.out.println(productTimetable.getCno());
        
      }
    }
    
    @GetMapping("report")
    public void report() {
      List<Report> r = reportService.list(1, 5);
      System.out.println(r);
      for(Report report: r) {
        System.out.println(report.getNo());
        System.out.println(report.getTitl());
        System.out.println(report.getConts());
        System.out.println(report.getMeno2());
        System.out.println(report.getMeno());
        
      }
      
    }
    
    @GetMapping("noti")
    public void noti() {
      List<Notice> n = noticeService.list(3, 10);
      System.out.println(n);
      for(Notice notis: n) {
        System.out.println(notis.getUrl());
      }
      
    }
    
    @GetMapping("mfile")
    public void mfile() {
      List<MentorFile> mf = mfileService.list(3, 10);
      System.out.println(mf);
      
    }
    
    @GetMapping("cs")
    public void cs() {
      List<Cs> cs = csService.list(3, 10);
      System.out.println(cs);
    }
    
    @GetMapping("cfile")
    public void cfile() {
//      List<ClassFile> cfile = cfileService.list(3, 10);
//      System.out.println(cfile);
//      for(ClassFile classfile: cfile) {
//        System.out.println(classfile.getFname());
//      }
    }
    
    @PostMapping("login")
    public String login(
            String type,
            String email,
            String password,
            String save,
            HttpServletResponse response,
            HttpSession session) {
        
        if (save != null) {// 이메일 저장하기를 체크했다면,
            Cookie cookie = new Cookie("email", email);
            cookie.setMaxAge(60 * 60 * 24 * 15);
            response.addCookie(cookie);
            
        } else {// 이메일을 저장하고 싶지 않다면,
            Cookie cookie = new Cookie("email", "");
            cookie.setMaxAge(0);
            response.addCookie(cookie);
        }
        
        Member loginUser = authService.getMember(email, password, type);
        
        if (loginUser != null) {
            // 회원 정보를 세션에 보관한다.
            session.setAttribute("loginUser", loginUser);
            String redirectUrl = null;
            
            switch (type) {
            case "manager":
                redirectUrl = "../manager/list";
                break; 
            }
            return "redirect:" + redirectUrl;
            
        } else {
            session.invalidate();
            return "redirect:form";
        }
    }
    
    @GetMapping("logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:form";
    }

    @RequestMapping("kakao")
    public void kakao(
        String email,
        String id,
        String profile_image,
        String nickname,
            HttpSession session) {
//      authService.getNaverMember(accessToken);
      
      System.out.println(email);
      System.out.println(id);
      System.out.println(profile_image);
      System.out.println(nickname);
//      return "redirect:../auth/form";
    }
    
    
    
}













