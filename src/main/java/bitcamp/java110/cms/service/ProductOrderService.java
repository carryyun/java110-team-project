package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.ProductOrder;

public interface ProductOrderService {

  List<ProductOrder> list(int pageNo, int pageSize);
  
  List<ProductOrder> listByMaster(int pageNo, int pageSize);
  List<ProductOrder> proPage(int pageNo, int pageSize);
  int countpro();

  // 주문 번호로 조회
  ProductOrder get(int no);

  // 주문자 번호로 조회
  List<ProductOrder> listByMeno(int pageNo, int pageSize, int meno);

  // 공예품 번호로 조회
  List<ProductOrder> listByPtno(int pageNo, int pageSize, int ptno);
  

  int add(ProductOrder productOrder);
  
  int adddeliveryinfo(ProductOrder productOrder);


}
