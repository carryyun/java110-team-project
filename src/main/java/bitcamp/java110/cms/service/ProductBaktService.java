package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.ProductBakt;

public interface ProductBaktService {
 
  List<ProductBakt> list(int pageNo, int pageSize); 
  
  // 장바구니 번호로 조회
  ProductBakt get(int no); 
  
  // 공예품 번호로 조회
  List<ProductBakt> listByPtno(int pageNo, int pageSize, int ptno); 
  
  // 멘티 번호로 조회
  List<ProductBakt> listByMeno(int pageNo, int pageSize, int meno);
  
  
}
