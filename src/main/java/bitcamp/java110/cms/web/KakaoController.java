package bitcamp.java110.cms.web;

import java.sql.Date;
import java.util.List;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import bitcamp.java110.cms.domain.ClassFile;
import bitcamp.java110.cms.domain.Cs;
import bitcamp.java110.cms.domain.Member;
import bitcamp.java110.cms.domain.MentorFile;
import bitcamp.java110.cms.domain.MentorLicense;
import bitcamp.java110.cms.domain.Notice;
import bitcamp.java110.cms.domain.ProductCert;
import bitcamp.java110.cms.domain.Report;
import bitcamp.java110.cms.domain.Timetable;
import bitcamp.java110.cms.service.AuthService;
import bitcamp.java110.cms.service.ClassFileService;
import bitcamp.java110.cms.service.CsService;
import bitcamp.java110.cms.service.MentorFileService;
import bitcamp.java110.cms.service.MentorLicenseService;
import bitcamp.java110.cms.service.NoticeService;
import bitcamp.java110.cms.service.ProductCertService;
import bitcamp.java110.cms.service.ReportService;
import bitcamp.java110.cms.service.TimetableService;

@Controller
@RequestMapping("/kakao")
public class KakaoController {

    AuthService authService;
    NoticeService noticeService;
    CsService csService;
    ClassFileService cfileService;
    MentorFileService mfileService;
    MentorLicenseService mlicnService;
    TimetableService timetableService;
    ReportService reportService;
    ProductCertService prctService;


    public KakaoController(
        AuthService authService
        ,NoticeService noticeService
        ,CsService csService
        ,ClassFileService cfileService
        ,MentorFileService mfileService
        ,MentorLicenseService mlicnService
        ,TimetableService timetableService
        ,ReportService reportService
        ,ProductCertService prctService) {

        this.authService = authService;
        this.noticeService = noticeService;
        this.csService = csService;
        this.cfileService = cfileService;
        this.mfileService = mfileService;
        this.mlicnService = mlicnService;
        this.timetableService=timetableService;
        this.reportService=reportService;
        this.prctService=prctService;

    }
    
       
              


    @GetMapping("form")
    public void form() {
    }
    
    @GetMapping("mlicn")
    public void mlicn() {
      // select test
//      List<MentorLicense> ml = mlicnService.list(1,5);
//      System.out.println(ml);
//      for(MentorLicense mlicn: ml) {
//        System.out.println(ml.get(2));
//      }
      
      // insert test
//      MentorLicense m = new MentorLicense();
//      
//      m.setLname("name1");
//      m.setPhot("phot1");
//      m.setMono(3);
//      
//      mlicnService.add(m);
      
      // update test
      MentorLicense m = new MentorLicense();
      
      m.setNo(7);
      m.setLname("name2");
      m.setPhot("phot2");
      
      mlicnService.update(m);
    }

    @GetMapping("timetable")
    public void timetable() {
      List<Timetable> t = timetableService.list(1, 4);
      System.out.println(t);

    
      for(Timetable timetable: t) {
        System.out.println(timetable.getNo());
        System.out.println(timetable.getCno());
        System.out.println(timetable.getDate());
        System.out.println(timetable.getStime());
        System.out.println(timetable.getCapa());
      }
      
        //insert
        
        Timetable tt=new Timetable();
        
     /*   
         
        tt.setCno(2);
        tt.setCapa(3);
        
        timetableService.add(tt);
      */
        //update
        tt.setNo(4);
        tt.setCno(7);
       tt.setCapa(3);
    
        
        timetableService.update(tt);
      
      }
    
      
    
    
    @GetMapping("prct")
    public void prct() {
      
      // insert test
//      ProductCert p = new ProductCert();
//      
//      p.setCno(2);
//      p.setMeno(3);
//      p.setType("test1");
//      p.setCnt(1);
//      
//      prctService.add(p);
      
      // update test
      ProductCert p = new ProductCert();
      
      p.setNo(6);
      p.setCno(5);
      p.setMeno(3);
      p.setType("test3");
      
      prctService.update(p);
    }
    
    @GetMapping("report")
    public void report() {
      List<Report> r = reportService.list(1, 4);
      
      // 조회
//      System.out.println(r);
//      for(Report report: r) {
//        System.out.println(report.getNo());
//        System.out.println(report.getTitl());
//        System.out.println(report.getConts());
//        System.out.println(report.getMeno2());
//        System.out.println(report.getMeno());
//      }
        //insert
        
        Report rpt=new Report();
        
     /*   
        rpt.setTitl("제목은101");
        rpt.setConts("내용도101");
        rpt.setUrl("http://bitcamp.com");
        rpt.setType("불량학생");
        rpt.setMeno2(1);
        rpt.setMeno(2);
        
        reportService.add(rpt);
      */
        //update
       
        rpt.setNo(3);
        rpt.setTitl("제목은일공일");
        rpt.setConts("바꿔버렷");
        rpt.setType("착한학생");
        
        reportService.update(rpt);
        
      }
      
  
    
    @GetMapping("noti")
    public void noti() {
      // select test
//      List<Notice> n = noticeService.list(3, 10);
//      System.out.println(n);
//      for(Notice notis: n) {
//        System.out.println(notis.getNo());
//      }
      
      // insert test
//      Notice n = new Notice();
//      n.setType("type1");
//      n.setUrl("url1");
//      
//      noticeService.add(n);
      
      Notice n = new Notice();
      n.setNo(9);
      n.setType("변경1");
      n.setUrl("url변경1");
      
     noticeService.update(n);
      
    }
    
    @GetMapping("mfile")
    public void mfile() {
      // select test
//      List<MentorFile> mf = mfileService.list(3, 10);
//      System.out.println(mf);
//      for(MentorFile m:mf) {
//        System.out.println(m.getNo());
//      }
      
      // insert test
//      MentorFile m = new MentorFile();
//      
//      m.setMfname("name");
//      m.setMono(4);
//      
//      mfileService.add(m);
      
      // update test
      MentorFile m = new MentorFile();
      
      m.setNo(7);
      m.setMfname("name1");
      
      mfileService.update(m);
      
      
    }
    
    @GetMapping("cs")
    public void cs() {
      // select test
//      List<Cs> cs = csService.list(3, 10);
//      System.out.println(cs);
//      for(Cs c: cs) {
//        System.out.println("질문번호: "+c.getNo());
//      }
      
      //insert test
//      Cs cs = new Cs();
//      cs.setConts("cont1");
//      cs.setAnser("anser1");
//      cs.setMeno(3);
//      cs.setTitl("titl1");
//      
//      csService.add(cs);
      
      //update test
      Cs c = new Cs();
      c.setNo(6);
      c.setAnser("test1");
      c.setTitl("test1");
      c.setConts("conts");
      
      csService.update(c);
    }
    
    @GetMapping("cfile")
    public void cfile() {
      // select test
//      List<ClassFile> cfile = cfileService.list(3, 10);
//      System.out.println(cfile);
//      for(ClassFile classfile: cfile) {
//        System.out.println(classfile.getFname());
//      }
      
      // insert test
//      ClassFile c = new ClassFile();
//      
//      c.setFname("test1");
//      c.setCno(4);
//      
//      cfileService.add(c);
      
      // update test
      ClassFile c = new ClassFile();
      
      c.setNo(7);
      c.setFname("test2");
      
      cfileService.update(c);
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













