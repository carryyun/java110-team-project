package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import bitcamp.java110.cms.dao.ClassRepDao;
import bitcamp.java110.cms.domain.ClassRep;
import bitcamp.java110.cms.service.ClassRipService;

@Service
public class ClassRepServiceImpl implements ClassRipService{
  
  @Autowired ClassRepDao classRipDao;

  @Override
  public int ripAdd(ClassRep classRip) {
    return 0;
  }

  @Override
  public int ripDelete(ClassRep classRip) {
    return 0;
  }

  @Override
  public int ripChange(ClassRep classRip) {
    return 0;
  }

  @Override
  public List<ClassRep> ripList(int pageSize) {
      HashMap<String, Object> params = new HashMap<>();
      params.put("size", pageSize);
      
      return classRipDao.findAll(params);
  }
  
  

}
