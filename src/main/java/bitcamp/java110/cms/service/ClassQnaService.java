package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.ClassQna;

public interface ClassQnaService {
  int qnaadd(ClassQna classqna);
  int qnaupdate(ClassQna classqna);
  int ansupdate(ClassQna classqna);
  List<ClassQna> classqnalist(int pageSize);
}
