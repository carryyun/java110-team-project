package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.Classes;

public interface ClassService {
  List<Classes> list();
  List<Classes> classlist(int no);
  Classes findbyptno(int ptno);
  
  
  Classes findAllBycno(int cno);
  int classadd(Classes classes);
  int classupdate(Classes classes);
}
