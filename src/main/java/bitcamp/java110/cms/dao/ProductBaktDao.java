package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.ProductBakt;

public interface ProductBaktDao {
  
  List<ProductBakt> findAll(Map<String,Object> params); // 전체조회

  ProductBakt findByNo(int no); // 장바구니번호 조회
  
  List<ProductBakt> findAllByPtno(Map<String,Object> params); // 공예품번호 조회
  
  List<ProductBakt> findAllByMeno(Map<String,Object> params); // 멘티번호
  
  
}
