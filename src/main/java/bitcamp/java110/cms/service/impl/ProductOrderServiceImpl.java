package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.ProductOrderDao;
import bitcamp.java110.cms.domain.ProductOrder;
import bitcamp.java110.cms.service.ProductOrderService;

@Service
public class ProductOrderServiceImpl implements ProductOrderService {

  @Autowired ProductOrderDao productOrderDao;
  @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)

  @Override
  public List<ProductOrder> list(int pageNo, int pageSize) {

    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);

    return productOrderDao.findAll(params);

  }

  @Override
  public ProductOrder get(int no) {

    return productOrderDao.findByNo(no);
  }

  
  @Override
  public List<ProductOrder> listByMeno(int meno ,int pageNo, int pageSize) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);
    params.put("meno", meno);

    return productOrderDao.findByMeno(params);
  }


  @Override
  public List<ProductOrder> listByPtno(int pageNo, int pageSize, int ptno) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);
    params.put("productno", ptno);

    return productOrderDao.findAllByPtno(params);
  }

  @Override
  public int add(ProductOrder productOrder) {
    return productOrderDao.insert(productOrder);
  }


  @Override
  public int adddeliveryinfo(ProductOrder productOrder) {
    
    return productOrderDao.delInsert(productOrder);
  }


  @Override
  public List<ProductOrder> proPage(int pageNo, int pageSize) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("pageNo", (pageNo - 1) * pageSize);
    params.put("pageSize", pageSize);

    return productOrderDao.findAllMaster(params);
  }


  @Override
  public int countpro() {
    return productOrderDao.countpro();
  }
  
  @Override
  public List<ProductOrder> listByMaster(int pageNo, int pageSize) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("pageNo", (pageNo - 1) * pageSize);
    params.put("pageSize", pageSize);

    return productOrderDao.findAllMaster(params);
  }

}
