package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.ProductQnA;

public interface ProductQnADao {
  
  List<ProductQnA> findAll(Map<String,Object> params); // 전체조회

  ProductQnA findByNo(int no); // 질문번호 조회
  
  List<ProductQnA> findAllByMeno(Map<String,Object> params); // 질문자번호 조회
  
  List<ProductQnA> findAllByPtno(Map<String,Object> params); // 공예품번호 조회
  
  
}
