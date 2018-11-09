package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.Classlike;

public interface ClasslikeDao {
  List<Classlike> likelist(Map<String, Object> params);
  int likeinsert(Classlike classlike);
  int likedelete(Classlike classlike);
}
