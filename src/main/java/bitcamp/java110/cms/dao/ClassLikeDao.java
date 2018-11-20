package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.ClassLike;

public interface ClassLikeDao {
  List<ClassLike> likelist(Map<String, Object> params);
  int likeinsert(ClassLike classlike);
  int likedelete(int no);
  List<ClassLike> findAllByMeno(int no);
}
