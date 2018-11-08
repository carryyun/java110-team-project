package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.Classqna;

public interface ClassqnaDao {
  List<Classqna> qnalist(Map<String, Object> params);
  int quainsert(Classqna classqna);
  int ansinsert(Classqna classqna);
}
