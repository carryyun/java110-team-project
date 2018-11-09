package bitcamp.java110.cms.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import bitcamp.java110.cms.dao.ClassqnaDao;
import bitcamp.java110.cms.domain.Classqna;
import bitcamp.java110.cms.service.ClassqnaService;

@Service
public class ClassqnaServiceImpl implements ClassqnaService{
  
  @Autowired ClassqnaDao classqnaDao;
  
  @Override
  public void qnaadd(Classqna classqna) {
    
  }
  
  @Override
  public List<Classqna> classqnalist(int pageNo,int pageSize){
    
    return null;
  }
}
