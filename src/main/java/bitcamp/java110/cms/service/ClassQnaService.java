package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.ClassQna;

public interface ClassQnaService {
  int qnaadd(ClassQna classqna);
  int qnadelete(int no);
  int qnaupdate(ClassQna classqna);
  int ansupdate(ClassQna classqna);
  
  List<ClassQna> classqnalist(int no,int pageNo,int pageSize);
  List<ClassQna> classqnalist2(int no,int pageNo,int pageSize);
  List<ClassQna> listbycno(int no , int pageNo,int pageSize );
  int countbycno(int no);
  
  ClassQna get(int no);
}
