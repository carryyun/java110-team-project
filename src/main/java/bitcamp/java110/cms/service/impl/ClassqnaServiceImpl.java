package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.ClassqnaDao;
import bitcamp.java110.cms.domain.Classqna;
import bitcamp.java110.cms.service.ClassqnaService;
@Service
public class ClassqnaServiceImpl implements ClassqnaService{
  
  @Autowired ClassqnaDao classqnaDao;
  
  @Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
  @Override
  public void qnaadd(Classqna classqna) {
    classqnaDao.quainsert(classqna);
  }
  
  @Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
  @Override
  public void ansadd(Classqna classqna) {
    classqnaDao.ansinsert(classqna);
  }
  
  @Override
  public List<Classqna> classqnalist(int pageSize){
    
    HashMap<String, Object> params = new HashMap<>();
    params.put("size", pageSize);
    
    return classqnaDao.qnalist(params);
  }
}
