package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.Classlike;

public interface ClasslikeService {
  List<Classlike> classlikelist(int pageSize);
  void likeadd(Classlike classlike);
  void likesub(Classlike classlike);
}
