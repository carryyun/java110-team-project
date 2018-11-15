package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.ClassRep;
import bitcamp.java110.cms.domain.ProductRep;

public interface ClassRepService {
//  int repAdd(ClassRep classRep);
//  int repDelete(ClassRep classRep);
//  int repChange(ClassRep classRep);
  List<ClassRep> repList();
  List<ClassRep> listbycno(int cno);
  
}
