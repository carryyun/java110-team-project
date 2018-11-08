package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.Classbakt;

public interface ClassbaktDao {

  List<Classbakt> baktlist(Map<String, Object> params);
  int baktinsert(Classbakt classbakt);
  int baktdelete(Classbakt classbakt);
}
