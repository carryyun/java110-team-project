package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.Classes;

public interface ClassService {
  List<Classes> list();
  List<Classes> listByBtno(int pageNo, int pageSize, int btno);
  List<Classes> listByMtno(int pageNo, int pageSize, int mtno);
  List<Classes> listByOrder(int pageNo, int pageSize,int max);
  List<Classes> listByLoc(int pageNo, int pageSize, String loc);
  List<Classes> listByWord(int pageNo, int pageSize, String loc);
  List<Classes> classList(int no);
  List<Classes> findAllByList();
  
  Classes findbyptno(int ptno);
  Classes findBycno(int no);
  Classes findAllBycno(int no); 
  void classadd(Classes classes, List<String> filelist,String removefiles,
      String days,String date,String edate,String stime, String etime,int loginUserNo, String selmtag);
  int classupdate(Classes classes);
  
  // 클래스 신청목록
  List<Classes> listByStat(String stat);
  
  //마이페이지 - 클래스 관리 - 멘토의 클래스들
  List<Classes> manageByMono(int mono);
  
  //마이페이지 - 클래스 관리 - 멘토 클래스의 멘티들
  List<Classes> manageByCno(int cno);

  //마이페이지 - 클래스 관리
  List<Classes> findByMono(int mono);
  int statupdate(Classes classes);
  
  int deleteclsstat(Classes classes);
}
