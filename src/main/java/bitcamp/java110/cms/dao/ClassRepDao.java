package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.ClassRep;

public interface ClassRepDao {
  List<ClassRep> findAll();
  List<ClassRep> findAllStar(Map<String,Object> params);
  int repinsert(ClassRep classRep);
  int repDelete(int no);
  int repChange(ClassRep classRep); // update
  List<ClassRep> findByCno(Map<String,Object> params);
  int countByCno(int no);
  
  ClassRep get(int no);
}
