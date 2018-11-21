package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.ProductQnADao;
import bitcamp.java110.cms.domain.ProductQnA;
import bitcamp.java110.cms.service.ProductQnAService;

@Service
public class ProductQnAServiceImpl implements ProductQnAService {

  @Autowired
  ProductQnADao productQnADao;

  @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)

  @Override
  public List<ProductQnA> list(int pageNo, int pageSize) {

    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);

    return productQnADao.findAll(params);

  }

  @Override
  public ProductQnA get(int no) {

    return productQnADao.findByNo(no);
  }


  @Override
  public List<ProductQnA> listByMeno(int pageNo, int pageSize, int meno) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("pageNo", (pageNo - 1) * pageSize);
    params.put("pageSize", pageSize);
    params.put("meno", meno);

    return productQnADao.findAllByMeno(params);
  }


  @Override
  public List<ProductQnA> listByPtno(int pageNo, int pageSize, int ptno) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);
    params.put("productno", ptno);


    return productQnADao.findAllByPtno(params);
  }

  @Override
  public int add(ProductQnA productQnA) {
    return productQnADao.insert(productQnA);
  }

  @Override
  public int update(ProductQnA productQnA) {
    return productQnADao.update(productQnA);
  }

  @Override
  public int updateAnser(ProductQnA productQnA) {
    return productQnADao.updateAnser(productQnA);
  }

  // 질문자 번호로 조회
  @Override
  public List<ProductQnA> listByQno(int no) {


    return productQnADao.findAllByQno(no);
  }


}
