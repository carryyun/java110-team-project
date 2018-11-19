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
  @Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
  
  @Override
  public List<ClassLike> classlikelist(int pageSize) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("size", pageSize);
    
    return classlikeDao.likelist(params);
  }

  @Override
  public void likeadd(ClassLike classlike) {
    classlikeDao.likeinsert(classlike);
  }

  @Override
  public List<ClassLike> listByMeno(int no) {
    // TODO Auto-generated method stub
    return classlikeDao.findAllByMeno(no);
  }

  @Override
  public void likesub(int no) {
    if (classlikeDao.likedelete(no) == 0) {
      throw new RuntimeException("해당 번호의 데이터가 없습니다");
    }
    classlikeDao.likedelete(no);
    
  }

}
