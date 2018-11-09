package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.Classqna;

public interface ClassQnaService {
  int qnaadd(Classqna classqna);
  int qnaupdate(Classqna classqna);
  int ansupdate(Classqna classqna);
  List<Classqna> classqnalist(int pageSize);
}
