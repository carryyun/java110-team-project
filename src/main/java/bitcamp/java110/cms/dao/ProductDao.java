package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.Product;

public interface ProductDao {
  
  // 전체조회
  List<Product> findAll(Map<String,Object> params); 

  // 공예품 번호 조회
  Product findByNo(int no); 

  // 판매자 번호 조회
  List<Product> findAllByMeno(Map<String,Object> params); 

  // 소분류 번호 조회
  List<Product> findAllByStno(Map<String,Object> params); 

  // 삽입
  int insert(Product product);

  // 갱신
  int update(Product product);

}
