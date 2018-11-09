package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.ClassQna;

public interface ClassQnaDao {
  List<ClassQna> qnalist(Map<String, Object> params);
  int qnainsert(ClassQna classqna);
  int qnaupdate(ClassQna classqna);
  int ansupdate(ClassQna classqna);
}
