package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.Classorder;

public interface ClassorderDao {
  List<Classorder> orderlist(Map<String,Object> params);
  int orderinsert(Classorder classorder);
  //int orderupdate
}
