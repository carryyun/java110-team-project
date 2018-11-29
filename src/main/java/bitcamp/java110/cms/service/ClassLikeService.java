package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.ClassLike;

public interface ClassLikeService {
  List<ClassLike> classlikelist(int pageSize);
  int likeadd(ClassLike classlike);
  void likesub(int no);
  List<ClassLike> listByMeno(int meno);
  /*List<ClassLike> listByCno(int cno);*/
}
