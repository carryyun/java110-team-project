package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.Classes;

public interface ClassService {
  List<Classes> list();
  List<Classes> listByBtno(int pageNo, int pageSize, int btno);
  List<Classes> listByMtno(int pageNo, int pageSize, int mtno);
  List<Classes> classList(int no);
  List<Classes> findAllByList();
  Classes findbyptno(int ptno);
  
  
  Classes findBycno(int no);
  int classadd(Classes classes);
  int classupdate(Classes classes);
  
  // 클래스 신청목록
  List<Classes> listByStat(String stat);
}
