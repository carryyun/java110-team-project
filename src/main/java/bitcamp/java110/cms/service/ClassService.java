package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.Classes;

public interface ClassService {
  int classadd(Classes classes);
  List<Classes> classlist(int pageNo,int pageSize);
}
