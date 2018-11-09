package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.ClassorderDao;
import bitcamp.java110.cms.domain.Classorder;
import bitcamp.java110.cms.service.ClassorderService;

@Service
public class ClassorderServiceImpl implements ClassorderService{

  @Autowired ClassorderDao classorderDao;

  @Override
  public List<Classorder> corderlist(int pageSize) {
    
    HashMap<String, Object> params = new HashMap<>();
    params.put("size", pageSize);
    
    return classorderDao.orderlist(params);
  }
  
  @Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
  @Override
  public void orderadd(Classorder classorder) {
    classorderDao.orderinsert(classorder);
  }
}
