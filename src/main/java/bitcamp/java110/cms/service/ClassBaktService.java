package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.ClassBakt;

public interface ClassBaktService {
  
  List<ClassBakt> list(int pageNo, int pageSize);
  
  int add(ClassBakt classbakt);
  
  int update(ClassBakt classbakt);
  
  void delete(int cbno);
  
  List<ClassBakt> listByMeno(int meno);
  
}
