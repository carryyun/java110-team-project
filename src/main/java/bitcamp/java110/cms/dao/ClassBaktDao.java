package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.ClassBakt;

public interface ClassBaktDao {

  List<ClassBakt> baktlist(Map<String, Object> params);
  int baktinsert(ClassBakt classbakt);
  int baktdelete(ClassBakt classbakt);
}
