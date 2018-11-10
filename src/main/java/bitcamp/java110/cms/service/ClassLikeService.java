package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.ClassLike;

public interface ClassLikeService {
  List<ClassLike> classlikelist(int pageSize);
  void likeadd(ClassLike classlike);
  void likesub(ClassLike classlike);
}
