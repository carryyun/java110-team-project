package bitcamp.java110.cms.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.ClassPopulDao;
import bitcamp.java110.cms.domain.ClassPopul;
import bitcamp.java110.cms.service.ClassPopulService;

@Service
public class ClassPopulServiceImpl implements ClassPopulService {

  @Autowired
  ClassPopulDao classPopulDao;

  @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)

  @Override
  public List<ClassPopul> list() {

    return classPopulDao.findAll();

  }

}
