package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.ProductDao;
import bitcamp.java110.cms.domain.Product;
import bitcamp.java110.cms.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

  @Autowired
  ProductDao productDao;

  @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)

  @Override
  public List<Product> list() {

    return productDao.findAll_list();

  }

  @Override
  public Product get(int no) {

    return productDao.findByNo(no);
  }


  @Override
  public List<Product> listByMeno(int pageNo, int pageSize, int meno) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);
    params.put("mentno", meno);

    return productDao.findAllByMeno(params);
  }

  @Override
  public List<Product> listByStno(int pageNo, int pageSize, int stno) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);
    params.put("smallno", stno);

    return productDao.findAllByStno(params);
  }
  
  // 마이페이지에서 판매자번호로조회
  @Override
  public List<Product> listBySeller(int pageNo, int pageSize, int meno) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);
    params.put("meno", meno);

    return productDao.findBySeller(params);
  }

  //마이페이지에서 판매자번호로조회2
  @Override
  public List<Product> listBySeller2(int pageNo, int pageSize, int meno) {
   HashMap<String, Object> params = new HashMap<>();
   params.put("rowNo", (pageNo - 1) * pageSize);
   params.put("size", pageSize);
   params.put("meno", meno);

   return productDao.findBySeller2(params);
 }
  @Override
  public int add(Product product) {
    return productDao.insert(product);
  }

  @Override
  public int update(Product product) {

    return productDao.update(product);
  }

  @Override
  public List<Product> findAllByList() {

    return productDao.findAllByList();
  }

  @Override
  public List<Product> listByMtno(int pageNo, int pageSize, int mtno) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);
    params.put("middleno", mtno);

    return productDao.findAllByMtno(params);
  }

}
