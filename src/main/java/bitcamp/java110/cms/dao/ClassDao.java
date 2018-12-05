package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.Classes;

public interface ClassDao {
  List<Classes> findAll();

  List<Classes> findAllList();

  List<Classes> findAllByBtno(Map<String,Object> params);
  List<Classes> findAllByMtno(Map<String,Object> params);
  
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
  
  // 마이페이지 - 클래스 관리 - 멘토 클래스
  List<Classes> manageByMono(int mono);
  
  // 마이페이지 - 클래스관리 - 멘토 클래스의 멘티들
  List<Classes> manageByCno(int cno);
  
  int statupdate(Classes classes);
}
