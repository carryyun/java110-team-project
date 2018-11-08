package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.Classqna;

public interface ClassqnaService {
  void qnaadd(Classqna classqna);
  List<Classqna> classqnalist(int pageNo,int pageSize);
}
