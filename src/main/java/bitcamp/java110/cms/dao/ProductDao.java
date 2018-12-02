package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.Product;

public interface ProductDao {
  
  // 전체조회
  List<Product> findAll_list(); 
  
  // 상품전체조회(전체 상품 목록 페이지에 사용함)
  List<Product> findAllByList();

  // 공예품 번호 조회
  Product findByNo(int no); 
  
  // 마이페이지 판매관리  판매자번호(meno)로조회
  List<Product> findBySeller(Map<String, Object> params);
  
  // 마이페이지 판매관리  판매자번호(meno)로조회
  List<Product> findBySeller2(Map<String, Object> params);

  // 판매자 번호 조회
  List<Product> findAllByMeno(Map<String,Object> params); 

  // 소분류 번호 조회
  List<Product> findAllByStno(Map<String,Object> params); 
  
  // 중분류 번호 조회
  List<Product> findAllByMtno(Map<String,Object> params); 

  
  // 삽입
  int insert(Product product);

  // 갱신
  int update(Product product);

}
