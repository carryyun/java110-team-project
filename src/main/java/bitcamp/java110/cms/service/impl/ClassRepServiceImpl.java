package bitcamp.java110.cms.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
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
    
    return classRepDao.findbycno(cno);
  }
  
  

}
