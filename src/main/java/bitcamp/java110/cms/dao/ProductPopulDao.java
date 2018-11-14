package bitcamp.java110.cms.dao;

import java.util.List;
import bitcamp.java110.cms.domain.ProductPopul;

public interface ProductPopulDao {
  
  // 전체조회
  List<ProductPopul> findAll(); 

}
