package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.ClassBaktDao;
import bitcamp.java110.cms.domain.ClassBakt;
import bitcamp.java110.cms.service.ClassBaktService;

@Service
public class ClassBaktServiceImpl implements ClassBaktService {

  @Autowired ClassBaktDao classbaktDao;
  
  @Override
  public List<ClassBakt> baktlist(int pageSize) {
    
    HashMap<String, Object> params = new HashMap<>();
    params.put("size", pageSize);
    
    return classbaktDao.baktlist(params);
  }

  @Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
  @Override
  public void baktadd(ClassBakt classbakt) {
    classbaktDao.baktinsert(classbakt);
  }

  @Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
  @Override
  public void baktsub(ClassBakt classbakt) {
    classbaktDao.baktdelete(classbakt);
  }

}
