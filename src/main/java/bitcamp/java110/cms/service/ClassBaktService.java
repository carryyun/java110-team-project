package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.ClassBakt;

public interface ClassBaktService {
  
  List<ClassBakt> baktlist(int pageSize);
  void baktadd(ClassBakt classbakt);
  void baktsub(ClassBakt classbakt);
}
