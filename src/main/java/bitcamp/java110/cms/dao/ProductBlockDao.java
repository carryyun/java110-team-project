package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.ProductBlock;

public interface ProductBlockDao {
  
  // 전체조회
  List<ProductBlock> findAll(Map<String,Object> params);

  // 멘토번호 조회
  List<ProductBlock> findAllByMono(Map<String,Object> params);
  
  // 멘티번호 조회
  List<ProductBlock> findAllByMeno(Map<String,Object> params); 
  
  
}
