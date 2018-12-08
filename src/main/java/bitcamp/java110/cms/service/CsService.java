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
  List<Cs> pageMaster(int pageNo, int pageSize);
  
}