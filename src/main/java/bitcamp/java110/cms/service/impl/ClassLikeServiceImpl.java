package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.ClassLikeDao;
import bitcamp.java110.cms.domain.ClassLike;
import bitcamp.java110.cms.service.ClassLikeService;

@Service
public class ClassLikeServiceImpl implements ClassLikeService {

  @Autowired ClassLikeDao classlikeDao;
  
  @Override
  public List<ClassLike> classlikelist(int pageSize) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("size", pageSize);
    
    return classlikeDao.likelist(params);
  }

  @Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
  @Override
  public void likeadd(ClassLike classlike) {
    classlikeDao.likeinsert(classlike);
  }

  @Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
  @Override
  public void likesub(ClassLike classlike) {
    classlikeDao.likedelete(classlike);
  }
}
