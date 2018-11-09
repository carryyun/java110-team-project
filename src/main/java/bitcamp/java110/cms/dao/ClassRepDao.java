package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.ClassRep;

public interface ClassRepDao {
  List<ClassRep> findAll(Map<String,Object> params);
  int ripInsert(ClassRep classRip);
  int ripDelete(int no);
  int ripChange(int no);
}
