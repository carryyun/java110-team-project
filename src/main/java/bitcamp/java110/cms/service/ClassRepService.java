package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.ClassRep;

public interface ClassRepService {
  int repAdd(ClassRep classRep);
  int repDelete(int no);
//  int repChange(ClassRep classRep);
  List<ClassRep> repList();
  List<ClassRep> listbycno(int cno);
  
}
