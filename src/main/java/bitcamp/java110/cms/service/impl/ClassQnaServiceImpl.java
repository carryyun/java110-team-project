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
  
  @Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
  @Override
  public int qnaadd(ClassQna classqna) {
    
    return classqnaDao.qnainsert(classqna);
  }
  
  @Override
  public int qnaupdate(ClassQna classqna) {
    
    return classqnaDao.qnaupdate(classqna);
  }
  
  @Override
  public int ansupdate(ClassQna classqna) {
    
    return classqnaDao.ansupdate(classqna);
  }
  
  @Override
  public List<ClassQna> classqnalist(int pageSize){
    
    HashMap<String, Object> params = new HashMap<>();
    params.put("size", pageSize);
    
    return classqnaDao.qnalist(params);
  }

  
}

