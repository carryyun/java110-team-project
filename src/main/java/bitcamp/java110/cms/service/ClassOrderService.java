package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.ClassOrder;

public interface ClassOrderService {

  List<ClassOrder> corderlist(int pageSize);
  void orderadd(ClassOrder classorder);
}
