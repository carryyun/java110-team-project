<<<<<<< HEAD
package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.Cs;

public interface CsService {
  int add(Cs cs);
  List<Cs> list(int pageNo, int pageSize,int meno);
  Cs get(int no);
  void delete(int no);
  int update(Cs cs);
  List<Cs>findByMaster();
  List<Cs> pageMaster(int pageNo, int pageSize);
  
  
=======
package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.Cs;

public interface CsService {
  int add(Cs cs);
  List<Cs> list(int pageNo, int pageSize,int meno);
  Cs get(int no);
  void delete(int no);
  int update(Cs cs);
  List<Cs>findByMaster();
  int addQuestioninfo(Cs cs);
  
  
>>>>>>> c9f11a73504a471e64258e5ad17458bfc3fdfab8
}