package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.ProductCert;

public interface ProductCertService {
 
  List<ProductCert> list(int pageNo, int pageSize); 
  
  // 인증서 번호로 조회
  ProductCert get(int no); 
  
  // 클래스 번호로 조회
  List<ProductCert> listByCno(int pageNo, int pageSize, int cno); 
  
  // 멘티 번호로 조회
  List<ProductCert> listByMeno(int pageNo, int pageSize, int meno);
  
  int add(ProductCert prct);
  int update(ProductCert prct);
  
}
