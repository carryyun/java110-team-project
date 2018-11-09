package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.Classbakt;

public interface ClassbaktService {
  
  List<Classbakt> baktlist(int pageSize);
  void baktadd(Classbakt classbakt);
  void baktsub(Classbakt classbakt);
}
