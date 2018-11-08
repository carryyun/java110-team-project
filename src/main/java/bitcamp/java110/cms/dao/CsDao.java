package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.Cs;

public interface CsDao {
  int insert(Cs cs);
  List<Cs> findAll(Map<String,Object> params);
  Cs findByNo(int no);
  int delete(int no);

}
