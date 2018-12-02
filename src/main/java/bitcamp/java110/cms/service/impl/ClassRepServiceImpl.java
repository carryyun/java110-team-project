package bitcamp.java110.cms.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.ClassRepDao;
import bitcamp.java110.cms.domain.ClassRep;
import bitcamp.java110.cms.service.ClassRepService;

@Service
public class ClassRepServiceImpl implements ClassRepService{
  
  @Autowired ClassRepDao classRepDao;

  @Override
  public List<ClassRep> repList() {

      return classRepDao.findAll();
  }

  @Override
  public List<ClassRep> listbycno(int cno) {
    
    return classRepDao.findByCno(cno);
  }

  @Override
  @Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
  public int repAdd(ClassRep classRep) {

    return classRepDao.repinsert(classRep);
  }

  @Override
  public int repDelete(int no) {

    return classRepDao.repDelete(no);
  }

  @Override
  public int repupdate(ClassRep classRep) {
    
    return classRepDao.repChange(classRep);
  }

}
