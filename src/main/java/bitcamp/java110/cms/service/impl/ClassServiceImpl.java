package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
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
  
  @Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
  @Override
  public int classadd(Classes classes) {
    
    classDao.classinsert(classes);
    
    return 1;
  }

  @Override
  public List<Classes> classlist(int pageNo,int pageSize){
    HashMap<String, Object> params = new HashMap<>();
    params.put("pagaNo", pageNo);
    params.put("pageSize", pageSize);
    
    
    return classDao.findAll(params);
  }
  
}
