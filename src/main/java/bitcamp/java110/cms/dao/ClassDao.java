package bitcamp.java110.cms.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.Classes;

public interface ClassDao {
  List<Classes> findAll();
  List<Classes> findAllStar();
  List<Classes> findAllList();
  List<Classes> findAllByOrder(Map<String,Object> params);
  List<Classes> findAllByBtno(Map<String,Object> params);
  List<Classes> findAllByMtno(Map<String,Object> params);
  List<Classes> findAllByLoc(Map<String,Object> params);
  List<Classes> findAllByWord(Map<String,Object> params);
  
  List<Classes> findAllByList(Map<String,Object> params); // 클래스 전체 목록
  int countclall();
  List<Classes> claPage(Map<String,Object> params);

  List<Classes> classform(int no);

  Classes findByptno(int no);

  int classinsert(Classes classes);

  int classupdate(Classes classes);

  Classes findBytag(int tag);

  Classes findByba(String ba);

  Classes findByday(String day);

  Classes findByCno(int no);

  // 클래스 신청목록
  List<Classes> findByStat(Map<String,Object> params);
  List<Classes> reqPage(Map<String,Object> params);
  int countclsreq();
  
  // 마이페이지 - 클래스 관리 - 멘토 클래스
  List<Classes> manageByMono(Map<String, Object> params);
  int countmanageByMono(int mono);
  // 마이페이지 - 클래스관리 - 멘토 클래스의 멘티들
  List<Classes> manageByCno(int cno);
  
  int statupdate(Classes classes);
  
  int deleteclsstat(Classes classes);
}
