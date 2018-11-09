package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.ClassbaktDao;
import bitcamp.java110.cms.domain.Classbakt;
import bitcamp.java110.cms.service.ClassbaktService;

//@Service
public class ClassbaktServiceImpl implements ClassbaktService {

  @Autowired ClassbaktDao classbaktDao;
  
  @Override
  public List<Classbakt> baktlist(int pageSize) {
    
    HashMap<String, Object> params = new HashMap<>();
    params.put("size", pageSize);
    
    return classbaktDao.baktlist(params);
  }

  @Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
  @Override
  public void baktadd(Classbakt classbakt) {
    classbaktDao.baktinsert(classbakt);
  }

  @Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
  @Override
  public void baktsub(Classbakt classbakt) {
    classbaktDao.baktdelete(classbakt);
  }

}
