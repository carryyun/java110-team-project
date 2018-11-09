package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.ProductRep;

public interface ProductRepService {
 
  List<ProductRep> list(int pageNo, int pageSize); 
  
  // 댓글 번호로 조회
  ProductRep get(int no); 
  
  // 작성자 번호로 조회
  List<ProductRep> listByMeno(int pageNo, int pageSize, int meno);
  
  // 공예품 번호로 조회
  List<ProductRep> listByPtno(int pageNo, int pageSize, int ptno); 
  
  // 입력(추가)
  int add(ProductRep productRep);

  // 갱신
  int update(ProductRep productRep);
  
  
}
