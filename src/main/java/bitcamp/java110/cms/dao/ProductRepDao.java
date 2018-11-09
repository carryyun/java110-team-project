package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.ProductRep;

public interface ProductRepDao {
  
  List<ProductRep> findAll(Map<String,Object> params); // 전체조회

  ProductRep findByNo(int no); // 댓글번호 조회
  
  List<ProductRep> findAllByMeno(Map<String,Object> params); // 작성자번호 조회
  
  List<ProductRep> findAllByPtno(Map<String,Object> params); // 공예품번호 조회
  
  
}
