package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.ProductRep;

public interface ProductRepDao {
  
  // 공예품번호 조회
  List<ProductRep> findAllByPtno(int no); 
  
  // 전체 조회
  List<ProductRep> findAll(Map<String,Object> params); 

  // 댓글번호 조회
  ProductRep findByNo(int no); // 댓글번호 조회
  
  // 작성자번호 조회
  List<ProductRep> findAllByMeno(Map<String,Object> params); 
  

  
  // 삽입
  int insert(ProductRep productRep);
  
  // 갱신
  int update(ProductRep reoductRep);
}
