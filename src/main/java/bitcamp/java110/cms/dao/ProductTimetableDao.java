package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.ProductTimetable;

public interface ProductTimetableDao {

  int insert(ProductTimetable productTimetable);
  List<ProductTimetable> findAll(Map<String,Object> params);
  ProductTimetable findByCtno(int no);
  ProductTimetable findByCno(int no);
  int delete(int no);
}
