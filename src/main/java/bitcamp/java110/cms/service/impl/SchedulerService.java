package bitcamp.java110.cms.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import bitcamp.java110.cms.dao.ClassDao;
import bitcamp.java110.cms.dao.ClassOrderDao;
import bitcamp.java110.cms.dao.ClassRepDao;
import bitcamp.java110.cms.dao.ProductDao;
import bitcamp.java110.cms.dao.ProductRepDao;
import bitcamp.java110.cms.domain.ClassRep;
import bitcamp.java110.cms.domain.Classes;
import bitcamp.java110.cms.domain.Product;
import bitcamp.java110.cms.domain.ProductRep;

@Service
public class SchedulerService {

  @Autowired ProductDao productDao;
  @Autowired ProductRepDao productRepDao;
  @Autowired ClassDao classDao;
  @Autowired ClassRepDao classRepDao;
  @Autowired ClassOrderDao classOrderDao;

  //스케줄러 이용
  @Scheduled(fixedRate=6000000)
  public void StarSetter() {
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
      }else {
        classes.setStar(1);
        classDao.classupdate(classes);
      }
    }
   
    
    
    // 상품
    List<Product> productList = productDao.findAllStar();
    for(Product product : productList) {
      Map<String, Object> params = new HashMap<>();
      params.put("rowNo", 0);
      params.put("size", 300);
      params.put("no", product.getNo());
      int tot = 0;
      List<ProductRep> productRepList = productRepDao.findAllStar(params);
      for(ProductRep productRep:productRepList) {
        tot+=productRep.getStar();
      }
      if(tot>0) {
        int avg = tot/productRepList.size();
        if(avg>0) {
          product.setStar(avg);
          productDao.update(product);
        }else {
          product.setStar(1);
          productDao.update(product);
        }
      }else {
        product.setStar(1);
        productDao.update(product);
      }
    }
    
    
    System.out.println("StarSetter Scheduled.(10분)");
  }
  
  List<Classes> prepopularitylist = new ArrayList<>();
  // 인기예감 클래스로 변경 
  @Scheduled(fixedRate=600000)
  public void popularityClass(){
    List<Integer> popularityClasslist = classOrderDao.selpopularityclass();
    for(int no=0; no<popularityClasslist.size(); no++) {
      prepopularitylist.add(classDao.popularityCallBack(popularityClasslist.get(no)));
    }
    for(int no : popularityClasslist) {
      classDao.popularityUpdate(no);
    }
  }   
  
  // 인기예감 선정전 원래클래스로 변경
  @Scheduled(fixedRate=599000)
  public void prepopularityClass() {
    for(int x=0; x<prepopularitylist.size(); x++) {
      Map<String,Object> preparms = new HashMap<>();
      preparms.put("mtno", prepopularitylist.get(x).getMtno());
      preparms.put("no", prepopularitylist.get(x).getNo());
      System.out.println(preparms.get("mtno"));
      System.out.println(preparms.get("no"));
      classDao.popularitypreCallbackUpdate(preparms);
    }
  }
  
}
