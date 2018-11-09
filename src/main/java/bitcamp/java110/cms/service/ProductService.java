package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.Product;

public interface ProductService {
 
  List<Product> list(int pageNo, int pageSize); 
  
  Product get(int no); // 공예품 번호로 조회
  
  List<Product> listByMeno(int pageNo, int pageSize, int meno); // 판매자번호로 조회
  
  List<Product> listByStno(int pageNo, int pageSize, int stno); // 소분류번호로 조회
  
  int add(Product product);

  int update(Product product);
  
  
}
