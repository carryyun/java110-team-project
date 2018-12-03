package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.ClassBakt;

public interface ClassBaktDao {

  List<ClassBakt> findAll(Map<String, Object> params);
  int insert(ClassBakt classbakt);
  int delete(int no);
  int update(ClassBakt classbakt);
  List<ClassBakt> findAllByMeno(int no);
  List<ClassBakt> sumAllByMeno(int no);
}
