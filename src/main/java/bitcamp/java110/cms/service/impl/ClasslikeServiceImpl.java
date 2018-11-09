package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.ClasslikeDao;
import bitcamp.java110.cms.domain.Classlike;
import bitcamp.java110.cms.service.ClasslikeService;

//@Service
public class ClasslikeServiceImpl implements ClasslikeService {

  @Autowired ClasslikeDao classlikeDao;
  @Autowired 
  
  @Override
  public List<Classlike> classlikelist(int pageSize) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("size", pageSize);
    
    return classlikeDao.likelist(params);
  }

  @Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
  @Override
  public void likeadd(Classlike classlike) {
    classlikeDao.likeinsert(classlike);
  }

  @Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
  @Override
  public void likesub(Classlike classlike) {
    classlikeDao.likedelete(classlike);
  }
}
