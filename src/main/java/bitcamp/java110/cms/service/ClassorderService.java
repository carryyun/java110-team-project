package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.Classorder;

public interface ClassorderService {

  List<Classorder> corderlist(int pageSize);
  void orderadd(Classorder classorder);
}
