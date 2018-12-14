package bitcamp.java110.cms.service.impl;

import java.sql.Date;
import java.sql.Time;
import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.ClassDao;
import bitcamp.java110.cms.dao.ClassFileDao;
import bitcamp.java110.cms.dao.TimetableDao;
import bitcamp.java110.cms.domain.ClassFile;
import bitcamp.java110.cms.domain.Classes;
import bitcamp.java110.cms.domain.Timetable;
import bitcamp.java110.cms.service.ClassService;

@Service
public class ClassServiceImpl implements ClassService{

  @Autowired ClassDao classDao;
  @Autowired ClassFileDao classFileDao;
  @Autowired TimetableDao timetableDao;
  
  @Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
  @Override
  public void classadd(Classes classes, List<String> filelist,
      String removefiles, String days,String date,String edate,String stime, String etime,int loginUserNo,String selmtag) {
//    System.out.println(loginUserNo);
    if(classes.getDetAddr() == null) {
      classes.setDetAddr(null);
    }else if((classes.getCfile().equals(""))){
      classes.setCfile("");
    }else if(classes.getCfile().length() > 0 & !( classes.getCfile().endsWith("jpg") | classes.getCfile().endsWith("png")  ) ) {
      classes.setCfile(classes.getCfile().substring(classes.getCfile().length()-11, classes.getCfile().length()));
    }
    classes.setMtno(Integer.parseInt(selmtag));
    classes.setMono(loginUserNo);
//    System.out.println(classes);
    classDao.classinsert(classes);
    if(classes.getType().equals("단기")) {
      String daylist[] = days.split(",");
      for(int x=0; x<daylist.length; x++) {
        Timetable t = new Timetable();
        t.setCno(classes.getNo());
        t.setDate(Date.valueOf(daylist[x]) );
        t.setEdate(Date.valueOf(daylist[x]));
        t.setStime(Time.valueOf(stime+":00"));
        t.setCapa(classes.getCapa());
        timetableDao.insert(t);
      }
    }else if(classes.getType().equals("장기")) {
      Timetable t = new Timetable();
      t.setCno(classes.getNo());
      t.setDate(Date.valueOf(date));
      t.setEdate(Date.valueOf(edate));
      t.setStime(Time.valueOf(stime+":00"));
      t.setCapa(classes.getCapa());
      timetableDao.insert(t);
    }
    for(String file : filelist) {      
        ClassFile cf = new ClassFile();
        cf.setFname(file);
        cf.setCno(classes.getNo());
        classFileDao.insert(cf);
    }
  }

  @Override
  public int classupdate(Classes classes) {
    
    return classDao.classupdate(classes);
  }
  
  @Override
  public List<Classes> list(){
    return classDao.findAllList();
  }
  @Override
  public List<Classes> listByBtno(int pageNo, int pageSize, int btno){
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);
    params.put("btno", btno);

    return classDao.findAllByBtno(params);
  }
  @Override
  public List<Classes> listByMtno(int pageNo, int pageSize, int mtno){
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);
    params.put("mtno", mtno);

    return classDao.findAllByMtno(params);
  }

  
  @Override
  public Classes findBycno(int no) {
    
    return classDao.findByCno(no);
  }


  @Override
  public List<Classes> classList(int no) {
    // TODO Auto-generated method stub
    return null;
  }

  @Override
  public Classes findbyptno(int ptno) {
    
    return classDao.findByptno(ptno);
  }
  
  // 마이페이지 - 클래스 관리 - 멘토의 클래스들
  @Override
  public List<Classes> manageByMono(int mono , int pageNo , int pageSize) {
    
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);
    params.put("no",mono);
    
    return classDao.manageByMono(params);
  }
  
  // 마에피이지 - 클래스관리 - 클래스의 멘티들
  @Override
  public List<Classes> manageByCno(int cno) {
    return classDao.manageByCno(cno);
  }

  @Override
  public int statupdate(Classes classes) {
//   System.out.println("서비스 "+classes.getNote());
    return classDao.statupdate(classes);
  }

  @Override
  public List<Classes> findByMono(int mono) {
    // TODO Auto-generated method stub 
    return null;
  }

  @Override
  public Classes findAllBycno(int no) {
    // TODO Auto-generated method stub
    return null;
  }

  @Override
  public List<Classes> listByLoc(int pageNo, int pageSize,String loc, int no) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);
    params.put("loc", loc);
    
    if(no == 9999 || no == 1) {
      params.put("no", "%");
    }else{
      params.put("no", no);
    }
    
    
    return classDao.findAllByLoc(params);
  }
  public List<Classes> listByWord(int pageNo, int pageSize,String word){
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);
    params.put("word", word);
    return classDao.findAllByWord(params);
  }

  @Override
  public int deleteclsstat(Classes classes) {
    
    return classDao.deleteclsstat(classes);
  }

  @Override
  public List<Classes> listByOrder(int pageNo, int pageSize, int max) {
    if(pageSize>max) {
      pageNo=1;
      pageSize=0;
    }
    
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);
    params.put("max", max);
    
    
    return classDao.findAllByOrder(params);
  }

  @Override
  public List<Classes> findAllByList(int pageNo, int pageSize) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("pageNo", (pageNo -1 ) * pageSize);
    params.put("pageSize", pageSize);
    
    return classDao.findAllByList(params);
  }

  @Override
  public int countclall() {
    return classDao.countclall();
  }

  @Override
  public List<Classes> claPage(int pageNo, int pageSize) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("pageNo", (pageNo -1 ) * pageSize);
    params.put("pageSize", pageSize);
    
    return classDao.claPage(params);
  }

  @Override
  public List<Classes> findByStat(int pageNo, int pageSize) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("pageNo", (pageNo -1 ) * pageSize);
    params.put("pageSize", pageSize);
    
    return classDao.findByStat(params);
  }

  @Override
  public List<Classes> reqPage(int pageNo, int pageSize) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("pageNo", (pageNo -1 ) * pageSize);
    params.put("pageSize", pageSize);
    
    return classDao.reqPage(params);
  }

  @Override
  public int countclsreq() {
    return classDao.countclsreq();
  }

  @Override
  public int countmanageByMono(int mono) {
    
    return classDao.countmanageByMono(mono);
  }

  @Override
  public List<Classes> checkForCert(int cno) {
    return classDao.checkForCert(cno);
  }
  
}
