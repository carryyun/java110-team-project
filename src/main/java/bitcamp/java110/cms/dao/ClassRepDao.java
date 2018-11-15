package bitcamp.java110.cms.dao;

import java.util.List;
import bitcamp.java110.cms.domain.ClassRep;

public interface ClassRepDao {
  List<ClassRep> findAll();
//  int repInsert(ClassRep classRep);
//  int repDelete(int no);
//  int repChange(int no); // update
  List<ClassRep> findbycno(int no);
  
}
