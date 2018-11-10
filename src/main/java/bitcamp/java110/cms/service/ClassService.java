package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.Classes;

public interface ClassService {
  int classadd(Classes classes);
  int classupdate(Classes classes);
  List<Classes> classlist(int pageSize);
  Classes get(int no);
}
