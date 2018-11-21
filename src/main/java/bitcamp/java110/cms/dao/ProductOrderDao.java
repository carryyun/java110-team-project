package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.ProductOrder;

public interface ProductOrderDao {
  
  List<ProductOrder> findAll(Map<String,Object> params); // 전체조회

  List<ProductOrder> findAllMaster(Map<String, Object> params); // 관리자조회
  
  ProductOrder findByNo(int no); // 주문번호
  
  List<ProductOrder> findAllByMeno(Map<String,Object> params); // 주문자번호
  
  List<ProductOrder> findAllByPtno(Map<String,Object> params); // 공예품번호
  
  // 삽입
  int insert(ProductOrder productOrder);
  
  
}
