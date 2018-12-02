package bitcamp.java110.cms.service;

import java.util.List;
import org.springframework.web.multipart.MultipartFile;
import bitcamp.java110.cms.domain.Classes;

public interface ClassService {
  List<Classes> list();
  List<Classes> listByBtno(int pageNo, int pageSize, int btno);
  List<Classes> listByMtno(int pageNo, int pageSize, int mtno);
  List<Classes> classList(int no);
  List<Classes> findAllByList();
  Classes findbyptno(int ptno);
<<<<<<< HEAD
  
  
  Classes findBycno(int no);
  int classadd(Classes classes);
=======
  Classes findAllBycno(int no);
  int classadd(Classes classes, List<MultipartFile> files,String removefiles, String days,String date,String edate);
>>>>>>> song
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
  
}
