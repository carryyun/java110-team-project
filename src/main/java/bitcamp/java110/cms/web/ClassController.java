package bitcamp.java110.cms.web;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import bitcamp.java110.cms.domain.BigTag;
import bitcamp.java110.cms.domain.ClassBakt;
import bitcamp.java110.cms.domain.ClassFile;
import bitcamp.java110.cms.domain.ClassLike;
import bitcamp.java110.cms.domain.ClassOrder;
import bitcamp.java110.cms.domain.ClassQna;
import bitcamp.java110.cms.domain.ClassRep;
import bitcamp.java110.cms.domain.Classes;
import bitcamp.java110.cms.domain.Mentee;
import bitcamp.java110.cms.domain.MiddleTag;
import bitcamp.java110.cms.domain.Timetable;
import bitcamp.java110.cms.service.BigTagService;
import bitcamp.java110.cms.service.CertService;
import bitcamp.java110.cms.service.ClassBaktService;
import bitcamp.java110.cms.service.ClassFileService;
import bitcamp.java110.cms.service.ClassLikeService;
import bitcamp.java110.cms.service.ClassOrderService;
import bitcamp.java110.cms.service.ClassQnaService;
import bitcamp.java110.cms.service.ClassRepService;
import bitcamp.java110.cms.service.ClassService;
import bitcamp.java110.cms.service.MenteeService;
import bitcamp.java110.cms.service.MiddleTagService;
import bitcamp.java110.cms.service.TimetableService;

@Controller
@RequestMapping("/class")
public class ClassController {

  ClassService classService;
  ClassQnaService classqnaService;
  ClassOrderService classOrderService;
  ClassLikeService classlikeService;
  ClassBaktService classBaktService;
  ClassRepService classrepService;
  ClassFileService classFileService;
  TimetableService timetableService;
  MenteeService menteeService;
  BigTagService bigTagService;
  MiddleTagService middleTagService;
  CertService certService;
  ServletContext sc;

  public ClassController(
      ClassService classService,ClassQnaService classqnaService,
      ClassOrderService classOrderService,ClassLikeService classlikeService
      ,ClassBaktService classBaktService,MenteeService menteeService,
      ClassRepService classrepService,ClassFileService classFileService,
      TimetableService timetableService,BigTagService bigTagService,
      MiddleTagService middleTagService, ServletContext sc,
      CertService certService) {
    this.classService = classService;
    this.classqnaService = classqnaService;
    this.classOrderService = classOrderService;
    this.classlikeService = classlikeService;
    this.classBaktService = classBaktService;
    this.menteeService = menteeService;
    this.classrepService = classrepService;
    this.classFileService = classFileService;
    this.timetableService = timetableService;
    this.bigTagService = bigTagService;
    this.middleTagService = middleTagService;
    this.certService = certService;
    this.sc = sc;
  }

  @GetMapping("form") 
  public void form() {
  }
  @PostMapping("findAll")
  public void findAll() {
  }
  @RequestMapping(value = "classadd", method=RequestMethod.GET)
  public void classinsert() {
  }

  @RequestMapping(value = "classadd", method=RequestMethod.POST)
  public String classinsert(Classes c,List<MultipartFile> files,
      String removefiles, String days,String date,String edate,
      String selmtag, String stime, String etime,HttpSession session) throws Exception {
    List<String> filelist = new ArrayList<>();
    /*System.out.println(removefiles);
    System.out.println(days);
    System.out.println(c.getNo());*/
    System.out.println("cfile = " + c.getCfile());
    System.out.println((c.getCfile().equals("")));
/*    System.out.println(c.getTitl());
    System.out.println(c.getPric());
    System.out.println(c.getTime());
    System.out.println(c.getCapa());
    System.out.println(c.getPstno());
    System.out.println(c.getBasAddr());
    System.out.println(c.getDetAddr());
    System.out.println(c.getType());
    System.out.println(stime);
    System.out.println(etime);*/
    for(MultipartFile file : files) {
      if(file.getOriginalFilename().length() > 2 ) {
        if(file.getOriginalFilename().equals(removefiles)) {
          files.remove((Object)file.getOriginalFilename());
        }else {
          String filename = UUID.randomUUID().toString();
          file.transferTo(new File(sc.getRealPath("/upload/img/classImg/" + filename+ ".png")));
          filelist.add("/upload/img/classImg/" + filename+ ".png");
          if("".equals(c.getCfile())) {
            System.out.println("/upload/img/classImg/" + filename+ ".png");
            String setFileName = "/upload/img/classImg/" + filename+ ".png";
            c.setCfile(setFileName);
          }
        }
      } 
    }
    for(String file : filelist) {
      System.out.println(file);
    }
    Mentee loginUser = new Mentee();
    loginUser = (Mentee) session.getAttribute("loginUser");
    System.out.println(loginUser.getNo());
    classService.classadd(c, filelist, removefiles, days,date, edate,stime,etime,loginUser.getNo(),selmtag);
    return "redirect:../mainpage/mainpage";
  }


  @RequestMapping("classupdate")
  public void classupdate(Classes c) {

    c.setNo(6);
    c.setTitl("고정지");
    c.setConts("안녕하세요 저는 둠칫둠칫");
    c.setPric(111);
    //c.setrgdt("now()");
    c.setTime("고정지");
    c.setCapa(10);
    c.setCfile("naver");
    c.setTinfo("고정지");
    c.setCinfo("안녕하ㅔ요");
    c.setPstno("고정지");
    c.setBasAddr("고정지");
    c.setDetAddr("고정지");
    //c.setEdt("고정지");
    c.setMono(3);
    c.setMtno(3);

    classService.classupdate(c);
  }

  @GetMapping("findBytag")
  public Classes findBytag() {

    List<Classes> clist = classService.classList(5);

    for(Classes c : clist) {

      System.out.println(c.getMtno());
      System.out.println(c.getNo());
      System.out.println(c.getTitl());
      System.out.println("-------------");
    }

    return null;
  }

  @GetMapping("findByba")
  public Classes findByba() {

    List<Classes> clist = classService.classList(5);

    for(Classes c : clist) {

      System.out.println(c.getNo());
      System.out.println(c.getTitl());
      System.out.println(c.getMtno());
      System.out.println(c.getBasAddr());
    }

    return null;
  }

  @GetMapping("findByday")
  public Classes findByday() {

    return null;
  }

  /*@RequestMapping("cls")
  public void cls(Model model) {
    List<Classes> clslist = classService.list();
    model.addAttribute("clslist", clslist);
  }
*/
  @RequestMapping("clsCate")
  public void clsCate(Model model, int no, String type) {
    BigTag bigtag = null;
    List<Classes> clslist = null;
    if(type == null & no!=1) {
      clslist = classService.listByBtno(1, 6, no);
      bigtag = bigTagService.get(no);
      model.addAttribute("selectedNo", 0);
    }else if(type == null & no==1) {
      clslist = classService.listByOrder(1, 6, 45);
      bigtag = bigTagService.get(no);
      model.addAttribute("selectedNo", 0);
    }else if("mtag".equals(type)) {
      clslist = classService.listByMtno(1, 6, no);
      MiddleTag middleTag = middleTagService.get(no);
      bigtag = bigTagService.get(middleTag.getBtno());
      model.addAttribute("selectedNo", no);
    }
    model.addAttribute("type",type);
    /*List<Classes> clsaddlist = classService.listByBtno(10, 5, no);
    List<Classes> classcalist = new ArrayList<>();
    for (Classes c : clsaddlist) {

      classcalist.add(c);
    }*/
    /*ObjectMapper mapper = new ObjectMapper();
    String jsonText = "";
    try {
      jsonText = mapper.writeValueAsString(classcalist);
      model.addAttribute("classcalist", jsonText);
    } catch (JsonProcessingException e) {
      System.out.println(e.getMessage());
    }*/

    System.out.println(bigtag.getNo());

    model.addAttribute("clslist", clslist);

    model.addAttribute("bigTag", bigtag);
  }

  @RequestMapping(value="clsCate.do" ,method= {RequestMethod.POST})
  public @ResponseBody List<Classes> clsCatedo(int no, String type,
      @RequestParam(defaultValue="2") int pageNo, @RequestParam(defaultValue="6") int pageSize) {
    List<Classes> scrollClsList = null;
    if(type == null & no != 1) {
      scrollClsList = classService.listByBtno(pageNo, pageSize, no);
    }if(type == null & no == 1) {
      scrollClsList = classService.listByOrder(pageNo, pageSize, 50);
    }else if("mtag".equals(type)) {
      scrollClsList = classService.listByMtno(pageNo, pageSize, no);
    }
    return scrollClsList;
  }
  
  @GetMapping("clsLoc")
  public void clsLoc(Model model, String locs, @RequestParam(defaultValue="9999") int no,
      @RequestParam(defaultValue="1") int pageNo,@RequestParam(defaultValue="6") int pageSize) {
    
    List<Classes> clslist = null;
    if(locs.contains(" ")) {
      // 주소중 2번째 스페이스까지의 주소만 뽑기위해
      int pos = locs.indexOf(" ");
      pos = locs.indexOf(" ",pos+1);
      String replelocs = locs.substring(0,pos);
      clslist=classService.listByLoc(pageNo,pageSize,replelocs,no);
    }else {
      String replelocs = locs.replaceAll(",","|");
      clslist=classService.listByLoc(pageNo,pageSize,replelocs,no);
    }

    
    BigTag bigtag = bigTagService.get(no);
    
    model.addAttribute("locs", locs);
    model.addAttribute("clslist", clslist);
    model.addAttribute("bigTag", bigtag);
  } 
  
  @RequestMapping(value="clsLoc.do" ,method= {RequestMethod.POST})
  public @ResponseBody List<Classes> clsLocdo(Model model, String locs, @RequestParam(defaultValue="9999") int no,
      @RequestParam(defaultValue="2") int pageNo, @RequestParam(defaultValue="6") int pageSize) {
    
    List<Classes> clslist = null;
    if(locs.contains(" ")) {
      // 주소중 2번째 스페이스까지의 주소만 뽑기위해
      int pos = locs.indexOf(" ");
      pos = locs.indexOf(" ",pos+1);
      String replelocs = locs.substring(0,pos);
      clslist=classService.listByLoc(pageNo,pageSize,replelocs,no);
    }else {
      String replelocs = locs.replaceAll(",","|");
      clslist=classService.listByLoc(pageNo,pageSize,replelocs,no);
    }
    
    return clslist;
  }
  
  
  @GetMapping("clsSerch")
  public void clsSerch(Model model, String word, @RequestParam(defaultValue="1") int pageNo,@RequestParam(defaultValue="6") int pageSize) {
    String Nword = "%"+ word +"%";
    List<Classes> clslist=classService.listByWord(pageNo,pageSize,Nword);

    BigTag bigtag = null;
    
    bigtag = bigTagService.get(1);
    
    model.addAttribute("word", word);
    model.addAttribute("clslist", clslist);
    model.addAttribute("bigTag", bigtag);
  } 
  
  @RequestMapping(value="clsSerch.do" ,method= {RequestMethod.POST})
  public @ResponseBody List<Classes> clsSerchdo(Model model, String word,
      @RequestParam(defaultValue="2") int pageNo, @RequestParam(defaultValue="6") int pageSize) {
    String Nword = "%"+ word +"%";
    List<Classes> clslist=classService.listByWord(pageNo,pageSize,Nword);
    
    return clslist;
  }
  
  

  @RequestMapping("detail")
  public void findByCno(@RequestParam(defaultValue="1") int reppageNo, @RequestParam(defaultValue="5") int reppageSize, 
      @RequestParam(defaultValue="1") int qnapageNo, @RequestParam(defaultValue="5") int qnapageSize, 
      Model model,int no,HttpSession session) {

    List<ClassRep> clsreqlist = classrepService.listbycno(no , reppageNo , reppageSize);
    Classes detailclass = classService.findBycno(no);
    List<ClassQna> clsqnalist = classqnaService.listbycno(no, qnapageNo, qnapageSize);
    List<ClassFile> clsfilelist = classFileService.findByCno(no);
    List<Timetable> clstimelist = timetableService.findByCno(no);
    int countrep = classrepService.countbycno(no);
    int countqna = classqnaService.countbycno(no);
    
    /*List<ClassOrder> clsorderlist = classOrderService.findBycnoFormeno(no);*/
    
    /*Paging paging = new Paging();
    paging.setPageNo(reppageNo);
    paging.setPageSize(reppageSize);
    paging.setTotalCount(countrep);*/
    
    Mentee loginUser = (Mentee) session.getAttribute("loginUser");
    int likeResult = 0;
    if(loginUser != null) {
      List<ClassLike> likelist = classlikeService.listByMeno(loginUser.getNo());
      for(ClassLike cl : likelist) {
        if(cl.getCno() == detailclass.getNo()) {
          likeResult = 1;
        }
      }
    }
    
    model.addAttribute("clsreqlist",clsreqlist);
    model.addAttribute("detailclass",detailclass);
    model.addAttribute("clsqnalist",clsqnalist);
    model.addAttribute("clsfilelist",clsfilelist);
    model.addAttribute("clstimelist",clstimelist);
    model.addAttribute("countrep",countrep);
    model.addAttribute("countqna",countqna);
    model.addAttribute("likeResult",likeResult);
    /*model.addAttribute("clsorderlist", clsorderlist);*/
  }

  @RequestMapping(value = "reppage.do", method = {RequestMethod.POST})
  public @ResponseBody List<ClassRep> reppage(int no ,
      @RequestParam(defaultValue="2") int reppageNo, @RequestParam(defaultValue="5") int reppageSize) {

    List<ClassRep> replist = classrepService.listbycno(no, reppageNo, reppageSize);

    return replist;
  }
  
  @RequestMapping(value = "qnapage.do", method = {RequestMethod.POST})
  public @ResponseBody List<ClassQna> qnapage(int no ,
      @RequestParam(defaultValue="2") int qnapageNo, @RequestParam(defaultValue="5") int qnapageSize) {

    List<ClassQna> qnalist = classqnaService.listbycno(no, qnapageNo, qnapageSize);

    return qnalist;
  }
  
  @RequestMapping(value = "updateclsstat.do", method = {RequestMethod.POST})
  public @ResponseBody String updateclsstat(int no , String stat) {
    
    Classes classes = new Classes();
    
    classes.setNo(no);
    classes.setStat(stat);
    
    classService.deleteclsstat(classes);

    return "redirect:clscate";
  }
  
  @RequestMapping(value = "countorder.do", method = {RequestMethod.POST})
  public @ResponseBody int ordercountlist(int no,HttpSession session) {
    
    Mentee mentee = (Mentee) session.getAttribute("loginUser");
    
    int clsorderlist = classOrderService.listByCno(no , mentee.getNo());
    
    return clsorderlist;
  }
  
  @RequestMapping("findByptno")
  public void findByptno(Model model,int no) {
    Classes prdtcls = classService.findbyptno(no);

    model.addAttribute("prdtcls",prdtcls);
  }

  @RequestMapping("classregi")
  public void classregi() {

  }

  ////////////////////여기까지 p_cls 클래스////////////////////////

  @GetMapping("qnalist")
  public void qnalist() {
  }

  @RequestMapping(value = "qnainsert", method = {RequestMethod.POST})
  public @ResponseBody List<ClassQna> qnainsert(ClassQna classqna) {
    classqnaService.qnaadd(classqna);
    List<ClassQna> qnalist = classqnaService.listbycno(classqna.getCno(), 1, 5);

    return qnalist;
  }

  @RequestMapping("qnaupdate")
  public void qnaupdate(ClassQna classqna) {

    classqna.setNo(5);
    //classqna.setMeno(7); 
    //classqna.setCno(cno);
    classqna.setTitl("고정은씨는 이 글을 보시오!!");
    classqna.setConts("응 넌 낚였어");

    classqnaService.qnaupdate(classqna);
  }

  @RequestMapping(value = "ansupdate.do", method = {RequestMethod.POST})
  public @ResponseBody List<ClassQna> ansupdate(int no , String anser) {

    ClassQna classqna = classqnaService.get(no);
    classqna.setAnser(anser);

    classqnaService.ansupdate(classqna);

    List<ClassQna> qnalist = classqnaService.listbycno(classqna.getCno(), 1, 5);

    return qnalist;
  }

  @RequestMapping(value = "repinsert", method = {RequestMethod.POST})
  public @ResponseBody List<ClassRep> repinsert(ClassRep classrep) {

    classrepService.repAdd(classrep);

    List<ClassRep> replist = classrepService.listbycno(classrep.getCno(), 1, 5);

    return replist;
  }

  @RequestMapping(value = "clsrepchange.do", method = {RequestMethod.POST})
  public @ResponseBody List<ClassRep> clsrepchange(int no , String conts) {

    ClassRep classrep = classrepService.get(no);
    classrep.setConts(conts);

    classrepService.repupdate(classrep);
    List<ClassRep> replist = classrepService.listbycno(classrep.getCno(), 1, 5);


    return replist;
  }

  @RequestMapping(value = "clsrepdele.do", method = {RequestMethod.POST})
  public @ResponseBody List<ClassRep> clsrepdele(int no) {

    ClassRep classrep = classrepService.get(no);

    classrepService.repDelete(no);

    List<ClassRep> replist = classrepService.listbycno(classrep.getCno(), 1, 5);

    return replist;
  }

  @RequestMapping(value = "clslikeins.do", method = {RequestMethod.POST})
  public @ResponseBody String clslikeins(ClassLike classlike) {

    System.out.println(classlike.getMeno());
    System.out.println(classlike.getCno());
    classlikeService.likeadd(classlike);

    return "redirect:detail?no="+classlike.getCno();
  }

  ///////////////// p_cls_qna 수업질문답변//////////////////
  @PostMapping("orderinsert")
  public int orderinsert(ClassOrder classorder) {

    classOrderService.orderadd(classorder);

    return 1;
  }

  @RequestMapping("qnadelete")
  public void qnadelete(int no) {

    classqnaService.qnadelete(no);
  }
  /* @GetMapping("corderlist")
  public List<ClassOrder> orderlist() {

    List<ClassOrder> clist = classOrderService.corderlist(4,10,5);

    for(ClassOrder c : clist) {
      System.out.println(c.getNo());
      System.out.println(c.getMeno());
      System.out.println(c.getTime());
      System.out.println(c.getTot_pric());
      System.out.println(c.getPayopt());
      System.out.println(c.getPaydt());
      System.out.println(c.getCtno());
    }

    return null;
  }*/

  ///////////////// p_cls_order 클래스 신청내역///////////////////////

  @GetMapping("likelist")
  public List<ClassLike> likelist() {

    List<ClassLike> clist = classlikeService.classlikelist(5);

    for(ClassLike c : clist) {
      System.out.println(c.getNo());
      System.out.println(c.getMeno());
      System.out.println(c.getCno());
    }
    return null;
  }

  @RequestMapping("likeinsert")
  public void likeinsert(ClassLike classlike) {

    classlike.setNo(6);
    classlike.setCno(6);
    classlike.setMeno(6);

    classlikeService.likeadd(classlike);

  }

  @RequestMapping("likedelete")
  public void likedelet(int no) {

    classlikeService.likesub(no);
  }

  ////////////////////////p_cls_like 찜클래스///////////////////////

  @PostMapping("baktinsert")
  public int baktinsert(ClassBakt classbakt) {

    classBaktService.add(classbakt);

    return 1;
  }

  @PostMapping("baktdelete")
  public int baktdelete(int no) {

    classBaktService.delete(no);

    return 1;
  }

  @GetMapping("baktlist")
  public List<ClassBakt> baktlist(){

    List<ClassBakt> clist = classBaktService.list(3, 5);

    for(ClassBakt c : clist) {
      System.out.println(c.getNo());
      System.out.println(c.getMeno());
      System.out.println(c.getCtno());
    }

    return null;
  }

  /*
   * 클래스 장바구니 리스트불러오기
   */
  @GetMapping("basket")
  public void basketclass(Model model, HttpSession session) {
    Mentee mentee = (Mentee) session.getAttribute("loginUser");
    List<ClassBakt> basketList = classBaktService.listByMeno(mentee.getNo());
    model.addAttribute("basketList", basketList);

    List<ClassBakt> sumList = classBaktService.sumByMeno(mentee.getNo());
    model.addAttribute("sumList", sumList);
  }


  /* 클래스장바구니*/
  @RequestMapping(value = "clsBaskt.do", method = {RequestMethod.POST})
  public @ResponseBody String clsBaskt(ClassBakt classBakt) {

    classBaktService.add(classBakt);

    return "redirect:detail?no="+classBakt.getNo();
  }

  @ResponseBody
  @RequestMapping("removeDate")
  public String removeDate(int no) throws Exception {

    classBaktService.delete(no);
    return "redirect:basketclass";
  }
  //클래스 장바구니 종료

  /*
   * 찜클래스 관련 시작
   */
  @GetMapping("like")
  public void basketproduct(Model model, HttpSession session) {
    Mentee loginUser = (Mentee) session.getAttribute("loginUser");

    List<ClassLike> likeList = classlikeService.listByMeno(loginUser.getNo());

    model.addAttribute("likeList",likeList);

  }
  @ResponseBody
  @RequestMapping("removeLike")
  public String removeLike(int no) throws Exception {

    classlikeService.likesub(no);
    return "redirect:classLike";
  }
  // 찜클래스 종료

  @RequestMapping(value = "addClsOrder.do", method = {RequestMethod.POST})
  public @ResponseBody String addClsOrderdo(String[] arr) {
    for(String s : arr) {
      String[] str = s.split("&");
      System.out.println(str.length);
      if(str.length == 4) {
        int baktNo = Integer.parseInt(str[0]);  //      str[0] = BasketNo
        int ttabNo = Integer.parseInt(str[1]);      //      str[1] = TtabNo
        int meno = Integer.parseInt(str[2]);      //      str[2] = Meno
        int time = Integer.parseInt(str[3]);      //      str[3] = Time
        String payOpt = str[4];      //      str[4] = PayOpt
        //      str[5] = 디테일에서 결제할 경우의 조건 "detail"
        classBaktService.delete(baktNo);

        Timetable ttab = new Timetable();
        ttab = timetableService.get(ttabNo);

        Classes classes = new Classes();
        classes = classService.findBycno(ttab.getCno());

        ClassOrder order = new ClassOrder();
        order.setCtno(ttabNo); // timetableNo임. 이름 잘못지어서 ctno인것같음.
        order.setMeno(meno);
        order.setTime(time);
        order.setTot_pric(classes.getPric()*time);
        order.setPayopt(payOpt);

        classOrderService.orderadd(order);
        return "complete";
      }else {
        //int baktNo = Integer.parseInt(str[0]);  //      str[0] = BasketNo
        int ttabNo = Integer.parseInt(str[1]);      //      str[1] = TtabNo
        int meno = Integer.parseInt(str[2]);      //      str[2] = Meno
        int time = Integer.parseInt(str[3]);      //      str[3] = Time
        String payOpt = str[4];      //      str[4] = PayOpt
        //      str[5] = 디테일에서 결제할 경우의 조건 "detail"
        Timetable ttab = new Timetable();
        ttab = timetableService.get(ttabNo);

        Classes classes = new Classes();
        classes = classService.findBycno(ttab.getCno());

        ClassOrder order = new ClassOrder();
        order.setCtno(ttabNo); // timetableNo임. 이름 잘못지어서 ctno인것같음.
        order.setMeno(meno);
        order.setTime(time);
        order.setTot_pric(classes.getPric()*time);
        order.setPayopt(payOpt);

        classOrderService.orderadd(order);
        return "complete";
      }
    }
    return "complete";
  }
  
  
}
