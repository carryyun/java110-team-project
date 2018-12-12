package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
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
  public List<ClassRep> listbycno(int cno , int reppageNo , int reppageSize) {
    HashMap<String,Object> params = new HashMap<>();
    params.put("rowNo", (reppageNo - 1) * reppageSize);
    params.put("size", reppageSize);
    params.put("no", cno);
    return classRepDao.findByCno(params);
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
  @Override
  public int countbycno(int cno) {
    
    return classRepDao.countByCno(cno);
  }

  @Override
  public ClassRep get(int no) {
    
    return classRepDao.get(no);
  }

  @Override
  public List<ClassRep> listbyRgdt() {
    return classRepDao.findAllByRgdt();
  }

  /*@Override
  public double countstar(int no) {
    
    return classRepDao.countstar(no);
  }*/

}
