package bitcamp.java110.cms.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.ClassDao;
import bitcamp.java110.cms.domain.Classes;
import bitcamp.java110.cms.service.ClassService;

@Service
public class ClassServiceImpl implements ClassService{

  @Autowired ClassDao classDao;
  
  
  @Override
  @Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
  public int classadd(Classes classes) {
    
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
  public Classes get(int no) {
    
    return classDao.findByCno(no);
  }


  @Override
  public List<Classes> classlist(int no) {
    // TODO Auto-generated method stub
    return null;
  }
  
}
