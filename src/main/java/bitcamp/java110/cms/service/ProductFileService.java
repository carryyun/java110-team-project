package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.ProductFile;

public interface ProductFileService {
 
  // 전체조회
  List<ProductFile> list(int pageNo, int pageSize); 
  
  // 공예품 번호로 조회
  List<ProductFile> listByPtno(int pageNo, int pageSize, int ptno);
  
  int add(ProductFile profile); // insert
  int update(ProductFile profile); // update
  
}
