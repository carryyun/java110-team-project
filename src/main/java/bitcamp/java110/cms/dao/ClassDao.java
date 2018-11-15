package bitcamp.java110.cms.dao;

import java.util.List;
import bitcamp.java110.cms.domain.Classes;

public interface ClassDao {
  List<Classes> findAll();
  List<Classes> findAllList();
  List<Classes> classform(int no);
  Classes findByptno(int no);
  
  int classinsert(Classes classes);
  int classupdate(Classes classes);
  
  Classes findBytag(int tag);
  Classes findByba(String ba);
  Classes findByday(String day);
  Classes findByCno(int no);
}