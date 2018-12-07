package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.ProductFile;

public interface ProductFileDao {

  // 전체조회
  List<ProductFile> findAll(Map<String,Object> params);
  
  // 공예품 번호로 조회
  List<ProductFile> findAllByPtno(int ptno);
  
  // 일단 만들어 놨음
  int insert(ProductFile profile);
  int update(ProductFile profile);
  
  int delete(ProductFile profile);
  
  
}
