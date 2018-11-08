package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.Cs;

public interface CsService {
  void add(Cs cs);
  List<Cs> list(int pageNo, int pageSize);
  Cs get(int no);
  void delete(int no);

}
