package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.ProductTimetable;

public interface ProductTimetableService {
  
  
  
  void add(ProductTimetable productTimetable);
  List<ProductTimetable> list(int pageNo, int pageSize);
  ProductTimetable get(int no);
  void delete(int no);

}
