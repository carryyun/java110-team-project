package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.ClassQnaDao;
import bitcamp.java110.cms.domain.ClassQna;
import bitcamp.java110.cms.service.ClassQnaService;


@Service
public class ClassQnaServiceImpl implements ClassQnaService{

  @Autowired ClassQnaDao classqnaDao;
  
  @Override
  @Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
  public int qnaadd(ClassQna classqna) {
    
    return classqnaDao.qnainsert(classqna);
  }
  
  @Override
  @Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
  public int qnaupdate(ClassQna classqna) {
    
    return classqnaDao.qnaupdate(classqna);
  }
  
  @Override
  @Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
  public int ansupdate(ClassQna classqna) {
    
    return classqnaDao.ansupdate(classqna);
  }
  
  @Override
  public List<ClassQna> classqnalist(int no,int pageNo,int pageSize){
    
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", pageNo);
    params.put("size", pageSize);
    params.put("no", no);
    
    return classqnaDao.classqnalist(params);
  }

  @Override
  public List<ClassQna> classqnalist2(int no,int pageNo,int pageSize){
    
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", pageNo);
    params.put("size", pageSize);
    params.put("no", no);
    
    return classqnaDao.classqnalist2(params);
  }
  
  @Override
  public List<ClassQna> listbycno(int cno , int qnapageNo,int qnapageSize) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("qnapageNo", (qnapageNo - 1) * qnapageSize);
    params.put("qnapageSize", qnapageSize);
    params.put("no", cno);
    
    return classqnaDao.findByCno(params);
  }

  @Override
  @Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
  public int qnadelete(int no) {
    
    return classqnaDao.qnadelete(no);
  }

  @Override
  public int countbycno(int no) {
    
    return classqnaDao.countByCno(no);
  }

  @Override
  public ClassQna get(int no) {
    
    return classqnaDao.get(no);
  }

}

