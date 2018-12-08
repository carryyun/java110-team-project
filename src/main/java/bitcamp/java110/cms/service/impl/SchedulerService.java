package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import bitcamp.java110.cms.dao.ClassDao;
import bitcamp.java110.cms.dao.ClassRepDao;
import bitcamp.java110.cms.dao.ProductDao;
import bitcamp.java110.cms.dao.ProductRepDao;
import bitcamp.java110.cms.domain.ClassRep;
import bitcamp.java110.cms.domain.Classes;
import bitcamp.java110.cms.domain.ProductRep;

@Service
public class SchedulerService {

  @Autowired ProductDao productDao;
  @Autowired ProductRepDao productRepDao;
  @Autowired ClassDao classDao;
  @Autowired ClassRepDao classRepDao;

  //스케줄러 이용
  @Scheduled(fixedRate=30000)
  public void test() {
    List<Classes> classesList = classDao.findAllStar();
    for(Classes classes : classesList) {
      Map<String, Object> params = new HashMap<>();
      params.put("rowNo", 0);
      params.put("size", 300);
      params.put("no", classes.getNo());
      int tot = 0;
      List<ClassRep> classesRepList = classRepDao.findAllStar(params);
      for(ClassRep classRep:classesRepList) {
        tot+=classRep.getStar();
      }
      if(tot>0) {
        int avg = tot/classesRepList.size();
        if(avg>0) {
          classes.setStar(avg);
          classDao.classupdate(classes);
        }else {
          classes.setStar(1);
          classDao.classupdate(classes);
        }
      }
    }
    System.out.println("30초마다 나옴");
  }
}
