package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import bitcamp.java110.cms.dao.ClassDao;
import bitcamp.java110.cms.dao.ClassFileDao;
import bitcamp.java110.cms.dao.TimetableDao;
import bitcamp.java110.cms.domain.Classes;
import bitcamp.java110.cms.service.ClassService;

@Service
public class ClassServiceImpl implements ClassService{

  @Autowired ClassDao classDao;
  @Autowired ClassFileDao classFileDao;
  @Autowired TimetableDao timetableDao;
  
  
  @Override
  public int classadd(Classes classes, List<MultipartFile> files,String removefiles, String days,String date,String edate) {
    if(classes.getDetAddr() == null) {
      classes.setDetAddr(null);
      classDao.classinsert(classes);
    }
    
    if(classes.getType().equals("단기")) {
      Map<String,Object> paramst = new HashMap<>();
      String daylist[] = days.split(",");
      for(int x=0; x<daylist.length; x++) {
        paramst.put("cno", classes.getNo());
        paramst.put("date", daylist);
        paramst.put("edate", daylist);
        paramst.put("capa", classes.getCapa());
        timetableDao.insert(paramst);
      }
    }else if(classes.getType().equals("장기")) {
      Map<String,Object> paramst = new HashMap<>();
      paramst.put("cno", classes.getNo());
     
      paramst.put("capa", classes.getCapa());
    }

    return classDao.classinsert(classes);
  }

  @Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
  @Override
  public int classupdate(Classes classes) {
    
    return classDao.classupdate(classes);
  }
  
  @Override
  public List<Classes> list(){

    return classDao.findAllList();
  }

  
  @Override
  public Classes findAllBycno(int no) {
    
    return classDao.findByCno(no);
  }


  @Override
  public List<Classes> classlist(int no) {
    // TODO Auto-generated method stub
    return null;
  }

  @Override
  public Classes findbyptno(int ptno) {
    
    return classDao.findByptno(ptno);
  }
  
}
