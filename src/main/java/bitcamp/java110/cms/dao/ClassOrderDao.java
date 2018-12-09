package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.ClassOrder;

public interface ClassOrderDao {
  List<ClassOrder> findByMeno(Map<String,Object> params);
  
  int orderinsert(ClassOrder corder);

  List<ClassOrder> findAllMaster(Map<String, Object> params); // 관리자조회
  
  int findBycno(Map<String, Object> params);
  
  List<ClassOrder> findBycnoFormeno(int no);
  int findBycno(int no , int rono);
  
  List<Integer> selpopularityclass();
}
