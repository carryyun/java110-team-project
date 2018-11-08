package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.Product;

public interface ProductDao {
  
  List<Product> findAll(Map<String,Object> params); // 전체조회

  Product findByNo(int no); // 공예품 번호

  List<Product> findAllByMeno(Map<String,Object> params); // 판매자 번호
  
  List<Product> findAllByStno(Map<String,Object> params); // 소분류 번호
}
