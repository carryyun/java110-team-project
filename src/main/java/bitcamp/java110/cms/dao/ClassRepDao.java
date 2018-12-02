package bitcamp.java110.cms.dao;

import java.util.List;
import bitcamp.java110.cms.domain.ClassRep;

public interface ClassRepDao {
  List<ClassRep> findAll();
  int repinsert(ClassRep classRep);
  int repDelete(int no);
  int repChange(ClassRep classRep); // update
  List<ClassRep> findByCno(int no);
}
