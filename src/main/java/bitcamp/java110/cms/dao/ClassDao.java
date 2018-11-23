package bitcamp.java110.cms.dao;

import java.util.List;
import bitcamp.java110.cms.domain.Classes;

public interface ClassDao {
  List<Classes> findAll();

  List<Classes> findAllList();

  List<Classes> findAllByList(); // 클래스 전체 목록

  List<Classes> classform(int no);

  Classes findByptno(int no);

  int classinsert(Classes classes);

  int classupdate(Classes classes);

  Classes findBytag(int tag);

  Classes findByba(String ba);

  Classes findByday(String day);

  Classes findByCno(int no);

  // 클래스 신청목록
  List<Classes> findByStat(String stat);
}
