package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.ClassRep;

public interface ClassRipService {
  int ripAdd(ClassRep classRip);
  int ripDelete(ClassRep classRip);
  int ripChange(ClassRep classRip);
  List<ClassRep> ripList(int pageSize);
  
}
