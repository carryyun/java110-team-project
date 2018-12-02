package bitcamp.java110.cms.service;

import java.util.List;
import org.springframework.web.multipart.MultipartFile;
import bitcamp.java110.cms.domain.Classes;

public interface ClassService {
  List<Classes> list();
  List<Classes> classlist(int no);
  Classes findbyptno(int ptno);
  Classes findAllBycno(int no);
  int classadd(Classes classes, List<MultipartFile> files,String removefiles, String days,String date,String edate);
  int classupdate(Classes classes);
}
